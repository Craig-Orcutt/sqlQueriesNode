-- Select All From Genres
SELECT *
FROM Genres

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistId, ArtistName, YearEstablished)
VALUES ('31','Dave Matthews Band', '1991')
-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album 
VALUES ('25', 'Under The Table And Dreaming', '9/27/1994' ,'4269', 'RCA', '31', '2')
-- Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song
VALUES (null, 'Rhyme & Reason', '257', 1994,
(SELECT genreId FROM Album a WHERE title = 'Under The Table And Dreaming'),
(SELECT artistId FROM Album a WHERE title = 'Under The Table And Dreaming'),
(SELECT albumId FROM Album a WHERE title = 'Under The Table And Dreaming')
)

INSERT INTO Song
VALUES (null, 'The Best Of Whats Around', '257', 1994,
(SELECT genreId FROM Album a WHERE title = 'Under The Table And Dreaming'),
(SELECT artistId FROM Album a WHERE title = 'Under The Table And Dreaming'),
(SELECT albumId FROM Album a WHERE title = 'Under The Table And Dreaming')
)
-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.
SELECT s.title as songTitle, a.title as albumTitle, b.artistName
FROM song s
LEFT JOIN album a
ON s.albumid = a.albumid
LEFT JOIN artist as b
ON  s.artistId = b.artistId
WHERE s.albumId = (SELECT albumId FROM album WHERE title = "Under The Table And Dreaming")


-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT count(song.songid) "song count", album.title Album
FROM song
JOIN album
ON song.albumid = album.albumid
GROUP BY album.title

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT count(song.songid) 'Song Count', artist.artistName Artist
FROM song
JOIN Artist
ON song.artistId = artist.artistId
GROUP BY artist.artistName
-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT count(song.songid) 'Song Count', genre.label Genre
FROM song
JOIN genre
ON song.genreId = genre.genreId
GROUP BY genre.label
-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT MAX(AlbumLength) as longestAlbum, Album.title
FROM Album
-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
SELECT MAX(SongLength) as longestSong, Song.title, Song.ArtistId
FROM Song
-- Modify the previous query to also display the title of the album.