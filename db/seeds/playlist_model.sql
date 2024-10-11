-- Inserting sample data into the tables
INSERT INTO playlists (user_id, name) VALUES
(1, 'Chill Vibes'),
(1, 'Workout Jams'),
(2, 'Top Hits 2024');


INSERT INTO playlist_tracks (playlist_id, track_id) VALUES
(1, 'track_id_1'),
(1, 'track_id_2'),
(2, 'track_id_3'),
(3, 'track_id_4'),
(3, 'track_id_5');
