-- To execute the query, open a terminal and run:
-- sqlite3 db/db.sqlite < queries/example.sql
.mode json
SELECT name, duration_ms
FROM tracks
LIMIT 5;
