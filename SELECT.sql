1 SELECT запросы:

    
    SELECT name, duration FROM tracks
    WHERE duration = (SELECT max(duration) FROM tracks);


    SELECT name FROM tracks
    WHERE duration >= '00:03:30';


    SELECT NAME, release_year  FROM compilations
    WHERE release_year  BETWEEN 2018 AND 2020;


    SELECT name FROM artists
    WHERE name ~ '^[a-zA-Z0-9]+$';


    SELECT name FROM tracks
    WHERE name LIKE '%my%' OR name LIKE '%мой%' OR name LIKE '%My%' OR name LIKE '%Мой%';



2 SELECT запросы:


    SELECT COUNT(id_artist) AS number , id_genre
    FROM artistgenres
    GROUP BY id_genre ;


    SELECT COUNT(tracks.id) AS number
    FROM tracks
    JOIN albums ON tracks.id_album = albums.id
    WHERE albums.release_year BETWEEN 2019 AND 2020;


    SELECT albums.id, AVG(tracks.duration) AS average from tracks
    JOIN albums ON tracks.id_album = albums.id
    GROUP BY albums.id
    ORDER BY average DESC;


    SELECT DISTINCT artists.name
    FROM artists
    WHERE artists.id NOT IN (
    SELECT albumartists.id_artist
    FROM albumartists
    JOIN albums ON albumartists.id_album = albums.id
    WHERE albums.release_year = 2020
);


    SELECT DISTINCT compilations.name FROM compilations
    JOIN trackcompilations ON compilations.id = trackcompilations.id_compilation
    JOIN tracks ON trackcompilations.id_track = tracks.id
    JOIN albumartists ON tracks.id_album = albumartists.id_album
    JOIN artists ON albumartists.id_artist = artists.id
    WHERE artists.name = 'Metallica';


3 SELECT запросы:


    SELECT albums.name
    FROM albums
    JOIN albumartists ON albums.id = albumartists.id_album
    JOIN artists ON albumartists.id_artist = artists.id
    JOIN artistgenres ON artists.id = artistgenres.id_artist
    JOIN genres ON artistgenres.id_genre = genres.id
    GROUP BY albums.name
    HAVING COUNT(DISTINCT genres.id) > 1;



    SELECT tracks.name
    FROM tracks
    LEFT JOIN trackcompilations ON tracks.id = trackcompilations.id_track
    WHERE trackcompilations.id_compilation IS NULL;



    SELECT artists.name, tracks.duration
    FROM tracks
    JOIN albums ON tracks.id_album = albums.id
    JOIN albumartists ON albums.id = albumartists.id_album
    JOIN artists ON albumartists.id_artist = artists.id
    WHERE tracks.duration = (SELECT MIN(duration) FROM tracks);



    SELECT albums.name, COUNT(tracks.id) AS number_of_tracks
    FROM albums
    JOIN tracks ON albums.id = tracks.id_album
    GROUP BY albums.name
    ORDER BY number_of_tracks ASC
    LIMIT 1;















