from flask import Blueprint,request
from models import Bet,db
from utils import token_required
import requests
from datetime import datetime, timezone
import pytz
import os
import json
restcountries_path = os.path.join(os.path.dirname(__file__),"./../ressources/restcountries.json")
REST_COUNTRIES = json.load(open(restcountries_path, "r", encoding="utf8"))

bets = Blueprint("bets",__name__)

@bets.route('/bets',strict_slashes=False, methods=['POST'])
@token_required
def post_bets_route(player):
    data = request.json
    bets = data["bets"]
    return post_bets(bets,player)

def post_bets(bets,player):
    headers = {'X-Auth-Token': 'dbdd072ab10f4bf6a83de4ff0edd6f22'}
    baseUrl = "https://api.football-data.org/v2/competitions/EC/matches"

    r = requests.get(baseUrl, headers=headers)
    matches = r.json()["matches"]

    now = datetime.now(tz=timezone.utc)
    past_matches = list(filter(lambda x: pytz.UTC.localize(datetime.strptime(x['utcDate'], '%Y-%m-%dT%H:%M:%SZ'))<now, matches))
    future_matches = list(filter(lambda x: pytz.UTC.localize(datetime.strptime(x['utcDate'], '%Y-%m-%dT%H:%M:%SZ'))>now, matches))

    past_matches_ids = [match["id"] for match in past_matches]
    future_matches_ids = [match["id"] for match in future_matches]
    
    bet_ids = [bet["matchId"] for bet in bets]

    is_bet_invalid = any(item in past_matches_ids for item in bet_ids) or not all(item in future_matches_ids for item in bet_ids)

    if is_bet_invalid:
        return {"status":"ko","code":"INVALID_BET"}

    r = requests.get("https://offer.cdn.betclic.fr/api/pub/v2/competitions/122?application=2&countrycode=fr%22%22&fetchMultipleDefaultMarkets=true&language=fr&sitecode=frfr")
    if "unifiedEvents" in r.json():
        matches_odds = r.json()["unifiedEvents"]
    else:
        return {"status":"ko","code":"IMPOSSIBLE_TO_BET"},404

    for bet in bets:
        odds = get_odds_of_match(bet["matchId"],matches_odds,matches)
        if Bet.query.filter_by(player=player,match_id=bet["matchId"]).first():
            db.session.query(Bet).filter(Bet.player == player,Bet.match_id == bet["matchId"]).update({Bet.bet: bet["bet"],
            Bet.match_home_team_odd:odds["HOME_TEAM"],
            Bet.match_draw_odd:odds["DRAW"],
            Bet.match_away_team_odd:odds["AWAY_TEAM"]})
        else:
            db.session.add(Bet(player=player,match_id=bet["matchId"],bet=bet["bet"],
            match_home_team_odd=odds["HOME_TEAM"],
            match_draw_odd=odds["DRAW"],
            match_away_team_odd=odds["AWAY_TEAM"]))
    db.session.commit()
    return {"status":"ok"}

def get_odds_of_match(match_id,matches_odds,matches):
    match = list(filter(lambda x: x["id"]==match_id, matches))[0]

    if match["stage"] == "GROUP_STAGE":
        drawPossible = True
    else:
        drawPossible = False
    
    homeTeam = match["homeTeam"]["name"]
    awayTeam = match["awayTeam"]["name"]
    teamNames = translate_contestants(homeTeam,awayTeam)

    def filter_contestants(match):
        if match["contestants"][0]["name"] == teamNames[0] and match["contestants"][1]["name"] == teamNames[1] :
            return match

    match = list(filter(filter_contestants, matches_odds))

    if len(match) == 0:
        return {}
    else:
        match = match[0]

    if drawPossible:

        odds = {'HOME_TEAM':match["markets"][0]["selections"][0]["odds"],'DRAW':match["markets"][0]["selections"][1]["odds"],'AWAY_TEAM':match["markets"][0]["selections"][2]["odds"]}

    else:
        betclic_match_id = match["id"]
        r = requests.get("https://offer.cdn.betclic.fr/api/pub/v4/events/"+str(betclic_match_id)+"?application=2&countrycode=fr&language=fr&sitecode=frfr").json()["markets"][2]["selections"]
        odds = {'HOME_TEAM':r[0]["odds"],'DRAW':0,'AWAY_TEAM':r[1]["odds"]}

    return odds
    
def translate_contestants(homeTeam,awayTeam):
    allCountries = REST_COUNTRIES
    teamNames = [homeTeam,awayTeam]
    for i in range(2):
        if teamNames[i] == "Wales":
            teamNames[i] = "Pays de Galles"
        elif teamNames[i] == "England":
            teamNames[i] = "Angleterre"
        elif teamNames[i] == "Scotland":
            teamNames[i] = "Écosse"
        else:
            if teamNames[i] == "North Macedonia":
                teamNames[i] = "Macedonia (the former Yugoslav Republic of)"
            elif teamNames[i] == "Russia":
                teamNames[i] = "Russian Federation"
            teamInfos = list(filter(lambda x: x['name'] == teamNames[i], allCountries))[0]
            teamNames[i] = teamInfos["translations"]["fr"]
        if teamNames[i] == "Macédoine":
            teamNames[i] = "Macédoine du Nord"
        elif teamNames[i] == "République tchèque":
            teamNames[i] = "République Tchèque"
    return teamNames
