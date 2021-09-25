from flask import Blueprint,request
from models import Player, Connection, db
from werkzeug.security import check_password_hash
import time
import jwt
import datetime
import os

login = Blueprint("login",__name__)

@login.route('/login', methods=['POST'])
def get_user_id():

    auth = request.authorization   

    if not auth or not auth.username or not auth.password:
        return {"status":"ko","code":"MISSING_AUTH"}

    player = Player.query.filter(Player.name.ilike(auth.username)).first()

    if not player:
        return {"status":"ko","code":"NO_PLAYER_WITH_THIS_NAME"}

    if not check_password_hash(player.password, auth.password):
        return {"status":"ko","code":"INVALID_AUTH"}   

    token = jwt.encode({'player_id': str(player.id), 'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes=10)}, os.environ["SECRET_KEY"],algorithm="HS256")

    db.session.add(Connection(time=time.time(),player=player))
    db.session.commit()

    playerJson = player.get_name()
    playerJson["status"]="ok"
    playerJson["token"] = token
    return playerJson
    