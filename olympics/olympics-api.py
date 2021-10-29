#!/usr/bin/env python3
'''
    olympics-api.py
    Kiri Salij
    27 October 2021

    API for the olympics database for Fall 2021 Software Design
'''
import sys
import argparse
import flask
import json
import psycopg2

#info to connect to database from config file
from config import password
from config import database
from config import user

app = flask.Flask(__name__)

@app.route('/games')
def get_games():
    ''' a JSON list of dictionaries, each of which represents one
        Olympic games, sorted by year.'''

    query = '''SELECT olympicgame.id, olympicgame.year, olympicgame.season, olympicgame.city
            FROM olympicgame
            ORDER BY olympicgame.year;'''

    try:
        cursor = connection.cursor()
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    games_list = []
    for row in cursor:
        game_dictionary = {'id':row[0], 'year':row[1], 'season':row[2], 'city':row[3]}
        games_list.append(game_dictionary)

    return json.dumps(games_list)


@app.route('/nocs')
def get_nocs():
    ''' a JSON list of dictionaries, each of which represents one
        National Olympic Committee, alphabetized by NOC abbreviation.'''

    query = '''SELECT noc.noc, noc.region
            FROM noc
            ORDER BY noc.noc;'''

    try:
        cursor = connection.cursor()
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    nocs_list = []
    for row in cursor:
        noc_dictionary = {'abbr.':row[0], 'name':row[1]}
        nocs_list.append(noc_dictionary)

    return json.dumps(nocs_list)

@app.route('/medalists/games/<games_id>')
def get_medalists_at_games(games_id):
    '''a JSON list of dictionaries, each representing one athlete
        who earned a medal in the specified games. If an noc is
        specified (with ?noc=noc_abbreviation) than only the
        medalists from that noc will be returned.'''

    noc = flask.request.args.get('noc')
    if noc is None:
        query = '''SELECT athletes.id, athletes.name, athletes.sex, event.sport, event.event, event.medal
                FROM athletes, event, athletes_event_noc_olympicgame
                WHERE athletes.id = athletes_event_noc_olympicgame.athlete_id
                AND event.id = athletes_event_noc_olympicgame.event_id
                AND event.medal != ''
                AND athletes_event_noc_olympicgame.olympicgame_id = %s;'''
    else:
        query = '''SELECT athletes.id, athletes.name, athletes.sex, event.sport, event.event, event.medal
                FROM athletes, event, athletes_event_noc_olympicgame, noc
                WHERE athletes.id = athletes_event_noc_olympicgame.athlete_id
                AND event.id = athletes_event_noc_olympicgame.event_id
                AND event.medal != ''
                AND athletes_event_noc_olympicgame.olympicgame_id = %s
                AND noc.id = athletes_event_noc_olympicgame.noc_id
                AND noc.noc = %s;'''

    try:
        cursor = connection.cursor()
        if noc is None:
            cursor.execute(query, (games_id,))
        else:
            cursor.execute(query, (games_id, noc))
    except Exception as e:
        print(e)
        exit()

    medalists_list = []
    for row in cursor:
        medalist_dictionary = {'athlete_id':row[0], 'athlete_name':row[1], 'athlete_sex':row[2], 'sport':row[3], 'event':row[4], 'medal':row[5]}
        medalists_list.append(medalist_dictionary)

    return json.dumps(medalists_list)


if __name__ == '__main__':
    parser = argparse.ArgumentParser('API for the olympics database')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()

    #tries to connect to database, prints error if not possible
    try:
        connection = psycopg2.connect(database=database, user=user, password=password)
    except Exception as e:
        print(e)
        exit()

    app.run(host=arguments.host, port=arguments.port, debug=True)
