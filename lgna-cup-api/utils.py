import jwt
from flask import request
from models import Player
from functools import wraps
import os

def token_required(f):
    @wraps(f)
    def decorator(*args, **kwargs):

        token = None

        if 'x-access-tokens' in request.headers:
            token = request.headers['x-access-tokens']

        if not token:
            return {"status":"ko","code":"MISSING_TOKEN"}

        try:
            data = jwt.decode(token,os.environ["SECRET_KEY"],algorithms=["HS256"])
        except jwt.ExpiredSignatureError:
            return {"status":"ko","code":"TOKEN_EXPIRED"}
        except:
            return {"status":"ko","code":"INVALID_TOKEN"}
        
        player = Player.query.filter_by(id=data['player_id']).first()
        if player:
            return f(player,*args, **kwargs)
        else:
            return {"status":"ko","code":"INVALID_TOKEN"}
    
    return decorator

def admin_token_required(f):
    @wraps(f)
    def decorator(*args, **kwargs):

        if not 'x-admin-token' in request.headers:
            return {"status":"ko","code":"MISSING_ADMIN_TOKEN"}
        else:
            token = request.headers['x-admin-token']

        if token == os.environ["SECRET_KEY"]:
            return f(*args, **kwargs)
        else:
            return {"status":"ko","code":"INVALID_ADMIN_TOKEN"}
    
    return decorator

def translateTeamNames():
    return "a faire"