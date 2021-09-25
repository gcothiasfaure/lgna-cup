from flask import Blueprint, jsonify
from models import Player, RankingTime,Score,db
from utils import token_required

ranking = Blueprint("ranking",__name__)

@ranking.route('/ranking', methods=['GET'])
@token_required
def rank_route(player):
    return rank()
    
def rank():
    join = db.session.query(Player.name,Score.score).filter(Player.id == Score.player_id).order_by(Score.score.desc()).all()
    res = {}
    res["status"]="ok"
    res["ranking"] = [{"name":row[0],"score":round(row[1], 2)} for row in join]
    res["lastScoreCalculationTime"] = RankingTime.query.all()[0].time
    return res
