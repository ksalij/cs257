SELECT noc.id, noc.noc, noc.team
FROM noc
ORDER BY noc;

SELECT DISTINCT athletes.id, athletes.name, noc.noc
FROM athletes, noc, athletes_event_noc_olympicgame
WHERE athletes.id = athletes_event_noc_olympicgame.athlete_id
AND noc.id = athletes_event_noc_olympicgame.noc_id
AND noc.noc = 'KEN';

SELECT athletes.name, olympicgame.year, olympicgame.season, event.event, event.medal
FROM athletes, olympicgame, event, athletes_event_noc_olympicgame
WHERE athletes.id = athletes_event_noc_olympicgame.athlete_id
AND olympicgame.id = athletes_event_noc_olympicgame.olympicgame_id
AND event.id = athletes_event_noc_olympicgame.event_id
AND athletes.name = 'Gregory Efthimios "Greg" Louganis'
AND event.medal != ''
ORDER BY olympicgame.year;

SELECT noc.noc, noc.team, COUNT(event.medal)
FROM noc, event, athletes_event_noc_olympicgame
WHERE noc.id = athletes_event_noc_olympicgame.noc_id
AND event.id = athletes_event_noc_olympicgame.event_id
AND event.medal = 'Gold'
GROUP BY noc.noc, noc.team
ORDER BY COUNT(event.medal) DESC;
