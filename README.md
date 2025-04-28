# Music Streaming Data Analysis

## Overview
This project analyzes a music streaming dataset to uncover trends in song popularity, genre distribution,
and artist performance. It uses SQL scripts for creating the schema, 
inserting sample data, and performing analytical queries.
## Database Schema
- **Artists**: Stores artist details (ArtistID, Name, Popularity).
- **Songs**: Stores song details (SongID, Title, ArtistID, Genre, Streams, ReleaseDate).
- **Playlists**: Stores playlist details (PlaylistID, Name, SongID).

## Sample Queries
1. **Top 5 Most-Streamed Songs**: Lists songs with the highest streams, including artist names.
2. **Genre Popularity**: Calculates total streams per genre.
3. **Artists with Multiple Top Songs**: Identifies artists with multiple songs in the top 10 by streams.
4. **Playlist Contents**: Shows songs in each playlist with their artists.
5. **Average Streams per Genre**: Computes average streams for each genre.
