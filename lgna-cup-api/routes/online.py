from flask import Blueprint

online = Blueprint("online",__name__)

@online.route('/online', methods=['GET'])
def is_online():
    return {"status":"ok"}