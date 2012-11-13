CREATE TABLE nerd(
	id SERIAL PRIMARY KEY,
	handle VARCHAR,
	name VARCHAR
);

CREATE TABLE message(
	id SERIAL PRIMARY KEY,
	nerd_id INTEGER,
	timestamp TIMESTAMP,
	body VARCHAR
);

CREATE TABLE keyword(
	id SERIAL PRIMARY KEY,
	word VARCHAR,
	ignore SMALLINT DEFAULT 0 NOT NULL
);

CREATE TABLE keyword_message(
	id SERIAL PRIMARY KEY,
	message_id INTEGER,
	keyword_id INTEGER
);
