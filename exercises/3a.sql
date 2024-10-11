-- List the names of the 10 newest albums in the database

SELECT name FROM albums ORDER BY release_date DESC LIMIT 10;
