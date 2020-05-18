from app import app
from flask import jsonify
from random import randint

@app.route('/')
def home():
   return "hello world!"

@app.route('/api/random')
def random_number():
    response = {
        'randomNumber': randint(1, 100)
    }
    return jsonify(response)
