-- Analytical queries for music streaming data
-- 1. Top 5 most-streamed songs
SELECT s.Title, a.Name AS Artist, s.Streams
FROM Songs s
JOIN Artists a ON s.ArtistID = a.ArtistID
ORDER BY s.Streams DESC
LIMIT 5;

-- 2. Genre popularity by total streams
SELECT Genre, SUM(Streams) AS TotalStreams
FROM Songs
GROUP BY Genre
ORDER BY TotalStreams DESC;

-- 3. Artists with multiple songs in top 10 by streams
SELECT a.Name, COUNT(*) AS SongCount
FROM Songs s
JOIN Artists a ON s.ArtistID = a.ArtistID
WHERE s.SongID IN (
    SELECT SongID
    FROM Songs
    ORDER BY Streams DESC
    LIMIT 10
)
GROUP BY a.Name
HAVING SongCount > 1;

-- 4. Songs in playlists with their artists
SELECT p.Name AS Playlist, s.Title, a.Name AS Artist
FROM Playlists p
JOIN Songs s ON p.SongID = s.SongID
JOIN Artists a ON s.ArtistID = a.ArtistID
ORDER BY p.Name, s.Title;

-- 5. Average streams per genre
SELECT Genre, AVG(Streams) AS AvgStreams
FROM Songs
GROUP BY Genre
ORDER BY AvgStreams DESC;
