CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS contributions(
	id SERIAL PRIMARY KEY,
	ts TIMESTAMP NOT NULL DEFAULT current_timestamp,
	sent_to_osm BOOLEAN NOT NULL DEFAULT false,
	osmid VARCHAR NOT NULL,
	name VARCHAR,
	status VARCHAR NOT NULL,
	opening_hours VARCHAR,
	details VARCHAR,
	language VARCHAR,
	tags JSONB,
	geom GEOMETRY(Point, 4326) NOT NULL
);
