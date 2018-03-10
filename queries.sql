-- Select All From Genres
SELECT *
FROM Genres

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistId, ArtistName, YearEstablished)
VALUES ('31','Dave Matthews Band', '1991')
-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album 
VALUES ('25', 'Under The Table And Dreaming', '9/27/1994' ,'4269')
-- Using the INSERT statement, add some songs that are on that album to the Song table.

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

-- Modify the previous query to also display the title of the album.