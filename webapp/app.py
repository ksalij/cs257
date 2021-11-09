'''
    app.py
    Kiri Salij and Lysander Miller
    8 November 2021

    Flask app for end-to-end webapp assignment
    CS 257 Software Design Fall 2021
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/')
#@app.route('/index.html')
def home():
    return flask.render_template('index.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A titanic application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
