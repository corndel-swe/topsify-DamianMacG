.mode json
SELECT
    albums.name AS album_name,
    ROUND(AVG(features.loudness), 2) AS average_loudness,
    albums.release_date
FROM
    albums
JOIN
    tracks ON tracks.album_id = albums.id
JOIN
    features ON features.track_id = tracks.id
GROUP BY
    albums.name, albums.release_date
ORDER BY
    albums.release_date;
