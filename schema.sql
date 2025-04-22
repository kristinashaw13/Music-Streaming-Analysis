-- creates tables for songs, artists, and playlists

CREATE TABLE Artists (
    ArtistID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Popularity INTEGER CHECK(Popularity >= 0 AND Popularity <= 100)
);

CREATE TABLE Songs (
    SongID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    ArtistID INTEGER,
    Genre TEXT,
    Streams INTEGER CHECK(Streams >= 0),
    ReleaseDate TEXT,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE Playlists (
    PlaylistID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    SongID INTEGER,
    FOREIGN KEY (SongID) REFERENCES Songs(SongID)
);
