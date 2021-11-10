'''
    api.py
    Kiri Salij and Lysander Miller
    8 November 2021

    Flask API for end-to-end webapp assignment
    CS 257 Software Design, Fall 2021
'''
import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)

@api.route('/all')
def get_all_data():
    ''' Returns all of the data associated with each of the passengers
        in our database. Default, sorted by id number.
        Returns an empty list if there's any database failure.

        id, survived, class, name, sex, age, sibsp, parch, ticket, fare, cabin, embarked
    '''
    query = '''SELECT * FROM passenger_info ORDER BY id'''

    passenger_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            if row[5] is not None: #because some of the passengers don't have an age, and it messes with casting it as a float
                age = float(row[5])
            else:
                age = row[5]
            passenger = {'id':row[0],
                      'survived':row[1],
                      'class':row[2],
                      'name':row[3],
                      'sex':row[4],
                      'age':age,
                      'sibsp':row[6],
                      'parch':row[7],
                      'ticket':row[8],
                      'fare':float(row[9]),
                      'cabin':row[10],
                      'embarked':row[11]}
            passenger_list.append(passenger)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(passenger_list)

