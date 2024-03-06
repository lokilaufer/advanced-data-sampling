INSERT INTO Artists (artist_id, artist_name) VALUES
(1, 'Adele'),
(2, 'Ed Sheeran'),
(3, 'Taylor Swift'),
(4, 'Bruno Mars');

INSERT INTO Genres (genre_id, genre_name) VALUES
(1, 'Pop'),
(2, 'R&B'),
(3, 'Rock');

INSERT INTO Artists_Genres (artist_id, genre_id) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 3),
(4, 1);

INSERT INTO Albums (album_id, album_name, release_year) VALUES
(1, '25', 2015),
(2, 'Divide', 2017),
(3, 'Lover', 2019),
(4, 'Fine Line', 2019);

INSERT INTO Artists_Albums (artist_id, album_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO Tracks (track_id, track_name, duration, album_id) VALUES
(1, 'Hello', 300, 1),
(2, 'Shape of You', 240, 2),
(3, 'ME!', 330, 3),
(4, 'Uptown Funk', 280, 4),
(5, 'My Immortal', 320, 1),
(6, 'Thinking Out Loud', 250, 2);

INSERT INTO Compilations (compilation_id, compilation_name, release_year) VALUES
(1, 'Best of 2020', 2020),
(2, 'Hits of the Decade', 2020),
(3, 'Summer Vibes', 2021),
(4, 'Chill Out Mix', 2021);

INSERT INTO Compilation_Tracks (compilation_id, track_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 3),
(4, 5),
(4, 6);