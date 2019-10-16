#!/bin/python
from flask import Flask, jsonify, abort
import json

datas = {}
with open('data.json', 'r') as file:
    for d in json.loads(file.read()):
        datas[d["public_address"]] = d

app = Flask(__name__)

@app.route('/api/datas/<string:address>', methods=['GET'])
def get_task(address):
    if not address in datas:
        abort(404)
    return jsonify(datas[address])

if __name__ == '__main__':
    app.run(debug=True, host="127.0.0.1", port=9000)