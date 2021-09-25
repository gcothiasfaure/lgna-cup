from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.dialects.postgresql import UUID
import uuid

db = SQLAlchemy()

class Player(db.Model):
    __tablename__ = 'players'
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    name = db.Column(db.String(80), unique=True, nullable=False)
    password = db.Column(db.String(200), unique=False, nullable=False)
    score = db.relationship('Score', backref='player')
    bet = db.relationship('Bet', backref='player')
    connection = db.relationship('Connection', backref='player')

    def get_name(self):
        return {
            'name': self.name
        }

class Score(db.Model):
    __tablename__ = 'scores'
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    player_id = db.Column(UUID(as_uuid=True), db.ForeignKey('players.id'), unique=True, nullable=False)
    score = db.Column(db.Float(), unique=False, nullable=False)

class Bet(db.Model):
    __tablename__ = 'bets'
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    player_id = db.Column(UUID(as_uuid=True), db.ForeignKey('players.id'),unique=False, nullable=False)
    match_id = db.Column(db.Integer, unique=False, nullable=False)
    bet = db.Column(db.String(80), unique=False, nullable=False)
    match_home_team_odd = db.Column(db.Float(), unique=False, nullable=False)
    match_draw_odd = db.Column(db.Float(), unique=False, nullable=False)
    match_away_team_odd = db.Column(db.Float(), unique=False, nullable=False)

class RankingTime(db.Model):
    __tablename__ = 'ranking_time'

    time = db.Column(db.Float, primary_key=True, nullable=False)

class Connection(db.Model):
    __tablename__ = 'connections'

    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    time = db.Column(db.Float, nullable=False)
    player_id = db.Column(UUID(as_uuid=True), db.ForeignKey('players.id'),unique=False, nullable=False)