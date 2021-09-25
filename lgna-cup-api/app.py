import os
import gunicorn
from flask import Flask
from flask_cors import CORS
from models import db
from routes.admin_add_players import admin_add_players
from routes.admin_compute_ranking import admin_compute_ranking
from routes.matches import matches
from routes.bets import bets
from routes.login import login
from routes.ranking import ranking
from routes.online import online

app = Flask(__name__)
CORS(app)
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ["DATABASE_URI"]
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db.init_app(app)

app.register_blueprint(admin_add_players,url_prefix="/admin")
app.register_blueprint(admin_compute_ranking,url_prefix="/admin")
app.register_blueprint(matches,url_prefix="")
app.register_blueprint(bets,url_prefix="")
app.register_blueprint(login,url_prefix="")
app.register_blueprint(online,url_prefix="")
app.register_blueprint(ranking,url_prefix="")

# Ignored in prod
if __name__ == "__main__":
    print("Starting app ...")
    with app.app_context():
        db.create_all()

        # Player.__table__.drop(db.engine)
        # Bet.__table__.drop(db.engine)

        # for model in [Player,Bet]:
        #     db.session.query(model).delete()
        # db.session.commit()       

    # app.run(host="172.20.10.2")
    app.run(debug=True)