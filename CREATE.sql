 CREATE TABLE IF NOT EXISTS Genres (
     id SERIAL PRIMARY KEY,
     name VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS Artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS ArtistGenres (
    id_artist INT NOT NULL  REFERENCES Artists(id),
    id_genre INT NOT NULL REFERENCES Genres(id),
    PRIMARY KEY (id_artist, id_genre)
);


CREATE TABLE IF NOT EXISTS Albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    release_year INT NOT NULL CHECK (release_year BETWEEN 2018 and 2020)
);


CREATE TABLE IF NOT EXISTS AlbumArtists (
    id_album INT NOT NULL REFERENCES Albums(id),
    id_artist INT NOT NULL  REFERENCES Artists(id),
    PRIMARY KEY (id_album, id_artist)
);

CREATE TABLE IF NOT EXISTS Tracks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    duration TIME NOT NULL,
    id_album INT NOT NULL REFERENCES Albums(id)
);


CREATE TABLE IF NOT EXISTS Compilations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    release_year INT NOT NULL CHECK (release_year BETWEEN 2018 and 2020)
);


CREATE TABLE IF NOT EXISTS TrackCompilations(
    id_track INT NOT NULL  REFERENCES Tracks(id),
    id_compilation INT NOT NULL REFERENCES Compilations(id),
    PRIMARY KEY (id_compilation, id_track)
);
