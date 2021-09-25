from flask import Blueprint,request
from models import Player, db, Score
from werkzeug.security import generate_password_hash
from utils import admin_token_required

admin_add_players = Blueprint("admin-add-players",__name__)

@admin_add_players.route('/add-players', methods=['POST'])
@admin_token_required
def add_players_route():
    data = request.json
    players = data["players"]
    return add_players(players)

def add_players(players):
    for player in players:

        hashed_password = generate_password_hash(player["password"], method='sha256')

        player_name = player["name"]

        if Player.query.filter_by(name=player_name).first():
            return {"status":"ko","code":"PLAYER_NAME_ALREADY_EXISTS","player_name":player["name"]}
        else :
            player = Player(name=player_name,password=hashed_password)
            score = Score(score=0,player=player)
            db.session.add(player)
            db.session.add(score)
    
    db.session.commit()
    return {"status":"ok"}