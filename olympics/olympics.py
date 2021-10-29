'''
    Kiri Salij olympics.py
    For Software Design assignment Fall 2021
    10/20/21
'''
import argparse
import psycopg2

from config import password
from config import database
from config import user

#sets up the parser and arguments
parser = argparse.ArgumentParser(description='Searches Olympics Database. If you input an NOC, you will get a list of all the athletes. If you use the -g tag, you will get the number of gold medals each NOC has won. However if the -N and -g tag are both used you will get the gold medalists of the specified NOC.', add_help=True)

parser.add_argument('-N', '--NOC', action='store_true', help = 'lists athletes from a specified noc (default option)')
parser.add_argument('-g', '--gold', action='store_true', help = 'lists number of gold medals each NOC has won, decreasing order')

parser.add_argument('search_term', metavar = 'search_term', type=str, nargs='?', help = 'search term for olympics database')

args = parser.parse_args()



try:
    connection = psycopg2.connect(database=database, user=user, password=password)
except Exception as e:
    print(e)
    exit()


#searches database with user input
if args.gold and args.NOC:
    query = '''SELECT DISTINCT noc.noc, athletes.name
            FROM noc, event, athletes, athletes_event_noc_olympicgame
            WHERE noc.id = athletes_event_noc_olympicgame.noc_id
            AND event.id = athletes_event_noc_olympicgame.event_id
            AND athletes.id = athletes_event_noc_olympicgame.athlete_id
            AND noc = %s
            AND event.medal = 'Gold' '''
    print('===== Gold Medalists from {0} ====='.format(args.search_term))

elif args.gold and not args.NOC:
    query = '''SELECT noc.noc, COUNT(event.medal)
            FROM noc, event, athletes_event_noc_olympicgame
            WHERE noc.id = athletes_event_noc_olympicgame.noc_id
            AND event.id = athletes_event_noc_olympicgame.event_id
            AND event.medal = 'Gold'
            GROUP BY noc.noc, noc.team
            ORDER BY COUNT(event.medal) DESC;'''
    print('===== Number of Gold Medals Won by each NOC =====')
else:
    query = '''SELECT DISTINCT noc.noc, athletes.name
           FROM noc, athletes, athletes_event_noc_olympicgame
           WHERE athletes.id = athletes_event_noc_olympicgame.athlete_id
           AND noc.id = athletes_event_noc_olympicgame.noc_id
           AND noc = %s'''
    print('===== Athletes from {0} ====='.format(args.search_term))

try:
    cursor = connection.cursor()
    cursor.execute(query, (args.search_term,))
except Exception as e:
    print(e)
    exit()
print(cursor)


for row in cursor:
    print(row[0], row[1])
print()

connection.close()
