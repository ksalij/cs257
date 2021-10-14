'''
    convert.py
    Kiri Salij

    For use in the "olympics" assignment in Carleton's
    CS 257 Software Design class, Fall 2021.
'''

import csv

#Reading the noc_regions.csv file
file = open('noc_regions.csv')
csv_reader = csv.reader(file)
noc_regions_rows = []
csv_reader.__next__() #prevents the header from appending to the rows list
for row in csv_reader:
    noc_regions_rows.append(row)
file.close()

#adds noc_id to noc_regions_rows
noc_id_count = 0
for row in noc_regions_rows:
    noc_id_count = noc_id_count + 1
    noc_regions_rows[noc_id_count-1] = [noc_id_count, row[0],row[1],row[2]]


#Reading the athletes_event.csv file
file = open('athlete_events.csv')
csv_reader = csv.reader(file)
athlete_events_rows = []
csv_reader.__next__() #prevents the header from appending to the rows list
for row in csv_reader:
    athlete_events_rows.append(row)
file.close()


'''
    Parsing the athlete_events.csv file
    and writing to various new csv files
'''
athletes_file = open('athletes.csv', 'w')
athletes_writer = csv.writer(athletes_file)

olympicgame_file = open('olympicgame.csv', 'w')
olympicgame_writer = csv.writer(olympicgame_file)

event_file = open('event.csv', 'w')
event_writer = csv.writer(event_file)

athletes_event_noc_olympicgame_file = open('athletes_event_noc_olympicgame.csv', 'w')
athletes_event_noc_olympicgame_writer = csv.writer(athletes_event_noc_olympicgame_file)

noc_file = open('noc.csv', 'w')
noc_writer = csv.writer(noc_file)

ids = []
games_list = []
nocs = []
olympicgame_id_count = 0
event_id_count = 0
for row in athlete_events_rows:
    id = row[0]
    name = row[1]
    sex = row[2]
    age = row[3]
    height = row[4]
    weight = row[5]
    team = row[6]
    noc = row[7]
    games = row[8]
    year = row[9]
    season = row[10]
    city = row[11]
    sport = row[12]
    event = row[13]
    medal = row[14]

    if id not in ids:
        athletes_writer.writerow([id,name,sex,height,weight])
        ids.append(id)

    if games not in games_list:
        olympicgame_id_count = olympicgame_id_count + 1
        olympicgame_writer.writerow([olympicgame_id_count,year,city,season])
        games_list.append(games)

    event_id_count = event_id_count + 1
    event_writer.writerow([event_id_count,sport,event,medal,age])

    for noc_row in noc_regions_rows:
        if noc == noc_row[1] and noc not in nocs: #checks if the noc of the athlete_events.csv is the same as the noc_regions.csv
            noc_writer.writerow([noc_row[0],noc,team,noc_row[2],noc_row[3]]) #noc_id,noc,team,region,notes
            nocs.append(noc)

    #if noc was missing from noc_region.csv
    if noc not in nocs:
        noc_id_count =  noc_id_count + 1
        noc_writer.writerow([noc_id_count,noc,team,team])
        nocs.append(noc)
        noc_regions_rows.append([noc_id_count,noc,team,''])

    olympicgame_id = games_list.index(games) + 1 #because indexes start at 0 and the ids start at 1
    for noc_row in noc_regions_rows:
        if noc == noc_row[1]:
            noc_id = noc_row[0]

    athletes_event_noc_olympicgame_writer.writerow([id,event_id_count,noc_id,olympicgame_id])



athletes_file.close()
olympicgame_file.close()
event_file.close()
noc_file.close()
athletes_event_noc_olympicgame_file.close()
