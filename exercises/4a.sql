-- List the name of every album in the database
-- Include the artist name
-- (Make sure to select the album name first, then the artist name)

SELECT albums.name AS album_name, artists.name AS artist_name
FROM albums
JOIN artists ON albums.artist_id = artists.id;

