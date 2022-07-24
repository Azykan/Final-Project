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
artist_genres VARCHAR NOT NULL);