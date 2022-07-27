-- Main Table
CREATE TABLE weekly_global_streams (
  rank INT NOT NULL,
  uri VARCHAR NOT NULL,
  artist_names VARCHAR NOT NULL,
  track_name VARCHAR NOT NULL,
  source VARCHAR NOT NULL,
  peak_rank INT NOT NULL,
  previous_rank INT NOT NULL,
  weeks_on_chart INT NOT NULL,
  streams INT NOT NULL);

  -- New Table
CREATE TABLE artist_genres (
artist_names VARCHAR NOT NULL,
artist_genres VARCHAR);


SELECT * FROM artist_genres;

SELECT * FROM weekly_global_streams;

SELECT DISTINCT w.rank,
w.uri,
w.artist_names,
w.track_name,
w.source,
w.peak_rank,
w.previous_rank,
w.weeks_on_chart,
w.streams,
a.artist_genres

FROM weekly_global_streams AS w
LEFT JOIN artist_genres AS a
ON w.artist_names = a.artist_names
ORDER BY rank;