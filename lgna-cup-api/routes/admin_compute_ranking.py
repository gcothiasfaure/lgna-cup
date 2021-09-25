from flask import Blueprint
from models import Bet, db, RankingTime,Score
import requests
import time
from utils import admin_token_required

admin_compute_ranking = Blueprint("admin-compute-ranking",__name__)

@admin_compute_ranking.route('/compute-ranking', methods=['PATCH'])
@admin_token_required
def compute_rank_route():
    return compute_rank()

def compute_rank():
    headers = {'X-Auth-Token': 'dbdd072ab10f4bf6a83de4ff0edd6f22'}
    baseUrl = "https://api.football-data.org/v2/competitions/EC/matches"

    r = requests.get(baseUrl, headers=headers)
    matchResults = r.json()["matches"]
    for score in Score.query.all():
        playerScore = calculate_score_of_one_player(score.player,matchResults)
        db.session.query(Score).filter(Score.player_id == score.player_id).update({Score.score: playerScore})
    
    # Add ranking time
    RankingTime.query.delete()
    rankingTime = int(time.time())*1000
    db.session.add(RankingTime(time=rankingTime))
    
    db.session.commit()
    return {"status":"ok"}

def calculate_score_of_one_player(player,matchResults):
    playerScore = 0
    bets = Bet.query.filter_by(player=player).all()
    for bet in bets:
        match = list(filter(lambda x: x['id'] == bet.match_id, matchResults))[0]
        if match["score"]["winner"] == bet.bet:
            if bet.bet == "HOME_TEAM" :
                playerScore = playerScore + bet.match_home_team_odd
            elif bet.bet == "DRAW" :
                playerScore = playerScore + bet.match_draw_odd
            else:
                playerScore = playerScore + bet.match_away_team_odd
    return playerScore