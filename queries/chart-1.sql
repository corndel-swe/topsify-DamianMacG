
.mode json
SELECT
    artists.name AS artist_name,
    COUNT(tracks.id) AS explicit_track_count
FROM
    tracks
JOIN
    albums ON tracks.album_id = albums.id
JOIN
    artists ON albums.artist_id = artists.id
WHERE
    tracks.explicit = 1
GROUP BY
    artists.name
HAVING
    COUNT(tracks.id) > 0
ORDER BY
    explicit_track_count DESC;
