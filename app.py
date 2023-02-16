from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello, World!'


@app.route('/health')
def health_checking():
    ret = {'status': 'UP'}
    return jsonify(ret)
