CREATE TABLE covid_us_states (
	day DATE,
	state VARCHAR,
	fips INT,
	cases INT,
	deaths INT,
	PRIMARY KEY (state, day)
	);

CREATE TABLE YoY_OpenTable_states(
	State VARCHAR,
	Day DATE,
	YOYPctChange DECIMAL
	);
	
-- DROP TABLE YoY_OpenTable_states;
SELECT * FROM covid_us_states;
SELECT * FROM YoY_OpenTable_states;	

CREATE VIEW combined_view AS
	SELECT ot.State, ot.Day, ot.YOYPctChange, c.cases,c.deaths
		FROM YoY_OpenTable_states ot
		JOIN covid_us_states c ON ot.Day = c.day
		AND ot.State = c.state;
		
SELECT * FROM combined_view;