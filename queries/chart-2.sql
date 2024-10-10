.mode json
SELECT
    artists.name AS artist_name,
    albums.name AS album_name,
    ROUND(AVG(features.danceability), 2) AS average_danceability,
    ROUND(AVG(features.energy), 2) AS average_energy,
    ROUND(AVG(features.speechiness), 2) AS average_speechiness,
    ROUND(AVG(features.acousticness), 2) AS average_acousticness,
    ROUND(AVG(features.liveness), 2) AS average_liveness
FROM
    albums
JOIN
    artists ON albums.artist_id = artists.id
JOIN
    tracks ON tracks.album_id = albums.id
JOIN
    features ON features.track_id = tracks.id
GROUP BY
    artists.name, albums.name
ORDER BY
    artists.name, albums.name;

