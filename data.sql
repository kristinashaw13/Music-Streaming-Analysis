-- Inserts sample data into artists, songs, and playlists
INSERT INTO Artists (ArtistID, Name, Popularity) VALUES
(1, 'Taylor Swift', 95),
(2, 'Drake', 90),
(3, 'Billie Eilish', 85),
(4, 'The Weeknd', 88),
(5, 'Adele', 80);

INSERT INTO Songs (SongID, Title, ArtistID, Genre, Streams, ReleaseDate) VALUES
(1, 'Anti-Hero', 1, 'Pop', 1200000, '2022-10-21'),
(2, 'One Dance', 2, 'Hip-Hop', 1500000, '2016-04-05'),
(3, 'Bad Guy', 3, 'Pop', 900000, '2019-03-29'),
(4, 'Blinding Lights', 4, 'Pop', 2000000, '2019-11-29'),
(5, 'Hello', 5, 'Pop', 1100000, '2015-10-23'),
(6, 'Shake It Off', 1, 'Pop', 800000, '2014-08-18'),
(7, 'God''s Plan', 2, 'Hip-Hop', 1300000, '2018-01-19'),
(8, 'Lovely', 3, 'Pop', 700000, '2018-04-19'),
(9, 'Starboy', 4, 'Pop', 950000, '2016-09-21'),
(10, 'Easy On Me', 5, 'Pop', 850000, '2021-10-15');

INSERT INTO Playlists (PlaylistID, Name, SongID) VALUES
(1, 'Top Hits 2023', 1),
(1, 'Top Hits 2023', 4),
(1, 'Top Hits 2023', 10),
(2, 'Hip-Hop', 2),
(2, 'Hip-Hop', 7),
(3, 'Pop', 3),
(3, 'Pop', 8),
(3, 'Pop', 5);
