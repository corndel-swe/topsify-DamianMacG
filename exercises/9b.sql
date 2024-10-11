-- We'll also be making a junction table called "track_genres"

-- It will need two columns:
  -- track_id (this is a string)
  -- genre_id (this is an integer)

-- Of course, these need to be foreign keys to the relevant tables

-- Could you write the SQL to set up this junction table?


CREATE TABLE track_genres (
    track_id VARCHAR(255),
    genre_id INTEGER,
    FOREIGN KEY (track_id) REFERENCES tracks(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);


-- Merge comment