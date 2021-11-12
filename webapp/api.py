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

@api.route('/count/<status>/')
def get_count(status):
    ''' Returns a json list of various data associated with the passengers who
        survived. By default it returns the total number of inidivduals of the
        specifed status, either all, alive, or dead.

        Class, sex, and age can be specified with
        ?class=
        ?sex=
        ?start_age=
        ?end_age=
        respectfully, with each of the specifications going after the equal sign.
        Options include 1, 2, and 3 for class; male and female for sex; and
        a start and end age for the age range.

        id, survived, class, name, sex, age, sibsp, parch, ticket, fare, cabin, embarked
    '''
    query = '''SELECT COUNT(id) FROM passenger_info'''

    if status == "alive":
        query += ' WHERE survived=true'
    elif status == 'dead':
        query += ' WHERE survived=false'
    else:
        query += ' WHERE 1=1' #need something after the WHERE clause because of syntax

    start_age = flask.request.args.get('start_age', default=0, type=int)
    end_age = flask.request.args.get('end_age', default=10000, type=int)
    if start_age != 0 or end_age != 10000:
        query += ' AND age >= %s AND age <= %s' #Does not include null ages
    tuple_arguments = [start_age, end_age]

    pclass = flask.request.args.get('class')
    if pclass is not None:
        query += ' AND class=%s'
        tuple_arguments.append(pclass)

    sex = flask.request.args.get('sex')
    if sex is not None:
        query += ' AND sex=%s'
        tuple_arguments.append(sex)

    query += ';'
    #print(query)
    #print(tuple_arguments)
    passenger_count = None
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple(tuple_arguments))
        for row in cursor:
            passenger_count = row[0]
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(passenger_count)

@api.route('/search/<search_term>')
def search_passengers(search_term):
    ''' Returns all the passengers with names that include the search term'''

    like_clause = ' \'%' + search_term + '%\' '
    query = '''SELECT id, survived, class, name, sex
            WHERE name LIKE %s;
            '''
    print(query)
    print(like_clause)

    passenger_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (like_clause,))
        for row in cursor:
            passenger = {'id':row[0],
                      'survived':row[1],
                      'class':row[2],
                      'name':row[3],
                      'sex':row[4]}
            passenger_list.append(passenger)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(passenger_list)
