from app import app
from flask import jsonify
from random import randint

@app.route('/')
def home():
   return "hello worldos!"

@app.route('/api/random')
def random_number():
    response = {
        'randomNumber': randint(1, 100)
    }
    return jsonify(response)
