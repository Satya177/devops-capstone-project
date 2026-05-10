from flask import Flask
from flask_talisman import Talisman

app = Flask(__name__)

# Konfigurasi Talisman untuk security headers
talisman = Talisman(app)

from service import routes, models
