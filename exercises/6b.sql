-- Create a list of all album names
-- Include the total duration of the album
-- Sort the results by album duration, with the longest first

SELECT albums.name,
       SUM(tracks.duration_ms) AS total_duration
FROM albums
JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.id
ORDER BY total_duration DESC;
