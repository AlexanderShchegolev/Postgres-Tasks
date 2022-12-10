CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL 
);

CREATE TABLE IF NOT EXISTS singer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL 
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	duration TIME NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS singers_genres (
	singer_id INTEGER REFERENCES singer(id),
	genre_id INTEGER REFERENCES genre(id),
	CONSTRAINT pk PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS singers_albums (
	singer_id INTEGER REFERENCES singer(id),
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT sapk PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS collections_tracks (
	collection_id INTEGER REFERENCES collection(id),
	track_id INTEGER REFERENCES track(id),
	CONSTRAINT ctpk PRIMARY KEY (collection_id, track_id)
);