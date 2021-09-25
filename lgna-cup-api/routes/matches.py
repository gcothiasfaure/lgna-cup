from flask import Blueprint
import requests
from datetime import datetime, timezone, timedelta
import pytz
from models import Bet
from utils import token_required
import os
import json
restcountries_path = os.path.join(os.path.dirname(__file__),"./../ressources/restcountries.json")
REST_COUNTRIES = json.load(open(restcountries_path, "r", encoding="utf8"))

matches = Blueprint("matches",__name__)

NB_DAYS_BETABLE_MATCHES = 2

@matches.route('/matches', methods=['GET'])
@token_required
def matches_route(player):
    return get_matches(player.id)

def get_matches(player_id):
    bets = Bet.query.filter_by(player_id=player_id).all()

    headers = {'X-Auth-Token': 'dbdd072ab10f4bf6a83de4ff0edd6f22'}
    baseUrl = "https://api.football-data.org/v2/competitions/EC/matches"

    r = requests.get(baseUrl, headers=headers)

    if "matches" in r.json():
        matches = r.json()["matches"]
    else:
        return {"status":"ko","code":"IMPOSSIBLE_TO_FETCH_MATCHES"},404

    r = requests.get("https://offer.cdn.betclic.fr/api/pub/v2/competitions/122?application=2&countrycode=fr%22%22&fetchMultipleDefaultMarkets=true&language=fr&sitecode=frfr")
    
    if "unifiedEvents" in r.json():
        match_bets = r.json()["unifiedEvents"]
    else:
        return {"status":"ko","code":"IMPOSSIBLE_TO_FETCH_MATCHES"},404
    
    now = datetime.now(tz=timezone.utc)
    nbdays = now + timedelta(days=NB_DAYS_BETABLE_MATCHES)
    matches = list(filter(lambda x: pytz.UTC.localize(datetime.strptime(x['utcDate'], '%Y-%m-%dT%H:%M:%SZ'))>now, matches))
    matches = list(filter(lambda x: pytz.UTC.localize(datetime.strptime(x['utcDate'], '%Y-%m-%dT%H:%M:%SZ'))<nbdays, matches))

    response = {"matches":[]}

    allCountries = REST_COUNTRIES

    for match in matches:
        matchDict = {}

        match_id = match["id"]

        bet_match = list(filter(lambda bet: bet.match_id == match_id, bets))

        player_bet = None
        if len(bet_match)>0:
            player_bet = bet_match[0].bet

        # General infos
        matchDict["id"] = match_id
        matchDict["utcDate"] = match["utcDate"]

        # Bet info
        matchDict["playerBet"] = player_bet
        
        # Depending if group stage or not
        if match["stage"] == "GROUP_STAGE":
            matchDict["drawPossible"] = True
        else:
            matchDict["drawPossible"] = False
        
        for team in ["homeTeam","awayTeam"]:
            teamNameEN = match[team]["name"]
            if teamNameEN == "Wales":
                name = "Pays de Galles"
                flag = "https://upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Wales_%281959%E2%80%93present%29.svg"
            elif teamNameEN == "England":
                name = "Angleterre"
                flag = "https://upload.wikimedia.org/wikipedia/commons/a/ae/Flag_of_the_United_Kingdom.svg"
            elif teamNameEN == "Scotland":
                name = "Écosse"
                flag = "https://upload.wikimedia.org/wikipedia/commons/1/10/Flag_of_Scotland.svg"
            else:
                if teamNameEN == "North Macedonia":
                    teamNameEN = "Macedonia (the former Yugoslav Republic of)"
                elif teamNameEN == "Russia":
                    teamNameEN = "Russian Federation"
                teamInfos = list(filter(lambda x: x['name'] == teamNameEN, allCountries))[0]
                name = teamInfos["translations"]["fr"]

                # Exceptioins on french names
                if name == "Macédoine":
                    name = "Macédoine du Nord"
                elif name == "République tchèque":
                    name = "République Tchèque"

                flag = teamInfos["flag"]
            matchDict[team] = {"name":name,"flag":flag}
        odds = get_odds(matchDict["homeTeam"]["name"],matchDict["awayTeam"]["name"],match_bets,matchDict["drawPossible"])
        matchDict["odds"] = odds

        if matchDict["homeTeam"]["name"] == "République Tchèque":
            matchDict["homeTeam"]["name"] = "Rép. Tchèque"
        if matchDict["awayTeam"]["name"] == "République Tchèque":
            matchDict["awayTeam"]["name"] = "Rép. Tchèque"
        
        response["matches"].append(matchDict)
        response["status"] = "ok"
    return response

def get_odds(homeTeam,awayTeam,match_bets,drawPossible):

    def filter_contestants(match):
        if match["contestants"][0]["name"] == homeTeam and match["contestants"][1]["name"] == awayTeam :
            return match

    match = list(filter(filter_contestants, match_bets))

    if len(match) == 0:
        return []
    else:
        match = match[0]
    
    odds = []

    if drawPossible:

        for i in range(3):
            odds.append(match["markets"][0]["selections"][i]["odds"])

    else:
        betclic_match_id = match["id"]
        r = requests.get("https://offer.cdn.betclic.fr/api/pub/v4/events/"+str(betclic_match_id)+"?application=2&countrycode=fr&language=fr&sitecode=frfr").json()["markets"][2]["selections"]
        odds.append(r[0]["odds"])
        odds.append(0)
        odds.append(r[1]["odds"])

    return odds