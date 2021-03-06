from flask import Flask, send_from_directory, render_template, request, url_for, redirect, abort
import logging
import time



app = Flask(__name__)
app.config.from_pyfile('./instance/config.py')


@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0')

