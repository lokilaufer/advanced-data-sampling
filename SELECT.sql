SELECT track_name, duration
FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

SELECT track_name
FROM Tracks
WHERE duration >= 210;

SELECT compilation_name
FROM Compilations
WHERE release_year BETWEEN 2018 AND 2020;

SELECT artist_name
FROM Artists
WHERE artist_name NOT LIKE '% %';

SELECT track_name
FROM Tracks
WHERE track_name LIKE '%my%';

--Количество исполнителей в каждом жанре:
SELECT Genres.genre_name, COUNT(Artists_Genres.artist_id) AS number_of_artists
FROM Genres
LEFT JOIN Artists_Genres ON Genres.genre_id = Artists_Genres.genre_id
GROUP BY Genres.genre_name;

--Количество треков, вошедших в альбомы 2019-2020 годов:
SELECT COUNT(Tracks.track_id) AS number_of_tracks
FROM Tracks
INNER JOIN Albums ON Tracks.album_id = Albums.album_id
WHERE Albums.release_year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому:
SELECT Albums.album_name, AVG(Tracks.duration) AS average_duration
FROM Albums
INNER JOIN Tracks ON Albums.album_id = Tracks.album_id
GROUP BY Albums.album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году:
SELECT Artists.artist_name
FROM Artists
LEFT JOIN Artists_Albums ON Artists.artist_id = Artists_Albums.artist_id
LEFT JOIN Albums ON Artists_Albums.album_id = Albums.album_id
WHERE Albums.release_year != 2020 OR Albums.release_year IS NULL;

--Названия сборников, в которых присутствует исполнитель Bruno Mars:
SELECT Compilations.compilation_name
FROM Compilations
INNER JOIN Compilation_Tracks ON Compilations.compilation_id = Compilation_Tracks.compilation_id
INNER JOIN Tracks ON Compilation_Tracks.track_id = Tracks.track_id
INNER JOIN Albums ON Tracks.album_id = Albums.album_id
INNER JOIN Artists_Albums ON Albums.album_id = Artists_Albums.album_id
INNER JOIN Artists ON Artists_Albums.artist_id = Artists.artist_id
WHERE Artists.artist_name = 'Bruno Mars';