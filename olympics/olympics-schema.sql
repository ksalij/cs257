CREATE TABLE athletes (
	id integer,
	name text,
	sex text,
	height integer,
	weight decimal
);
CREATE TABLE olympicgame (
	id integer,
	year integer,
	city text,
	season text
);
CREATE TABLE event (
	id integer,
	sport text,
	event text,
	medal text,
	age integer
);
CREATE TABLE noc (
	id integer,
	noc text,
	team text,
	region text,
	notes text
);
CREATE TABLE athletes_event_noc_olympicgame (
	athlete_id integer,
	event_id integer,
	noc_id integer,
	olympicgame_id integer
);
