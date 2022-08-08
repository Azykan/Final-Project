-- Main Table
CREATE TABLE weekly_global_streams (
  rank INT NOT NULL,
  uri VARCHAR NOT NULL,
  artist_names VARCHAR NOT NULL,
  track_name VARCHAR NOT NULL,
  peak_rank INT NOT NULL,
  previous_rank INT NOT NULL,
  weeks_on_chart INT NOT NULL,
  streams INT NOT NULL,
  week DATE NOT NULL);

  -- Genre Table
CREATE TABLE artist_genres (
artist_names VARCHAR NOT NULL,
artist_genres VARCHAR);

-- Analytics Table
CREATE TABLE track_analytics (
  uri VARCHAR NOT NULL,
  danceability DECIMAL NOT NULL,
  energy DECIMAL NOT NULL,
  key INT NOT NULL,
  loudness DECIMAL NOT NULL,
  mode INT NOT NULL,
  speechiness DECIMAL NOT NULL,
  acousticness DECIMAL NOT NULL,
  instrumentalness DECIMAL NOT NULL,
  liveness DECIMAL NOT NULL,
  valence DECIMAL NOT NULL,
  tempo DECIMAL NOT NULL,
  type VARCHAR NOT NULL,
  id VARCHAR NOT NULL,
  track_href VARCHAR NOT NULL,
  analysis_url VARCHAR NOT NULL,
  duration_ms INT NOT NULL,
  time_signature INT NOT NULL);

SELECT * FROM artist_genres;

SELECT * FROM weekly_global_streams;

-- Use the below as this provides all available data
SELECT DISTINCT w.rank,
w.uri,
w.artist_names,
w.track_name,
w.peak_rank,
w.previous_rank,
w.weeks_on_chart,
w.streams,
a.artist_genres,
w.week,
t.danceability,
t.energy,
t.key,
t.loudness,
t.mode,
t.speechiness,
t.acousticness,
t.instrumentalness,
t.liveness,
t.valence,
t.tempo,
t.type,
t.id,
t.track_href,
t.analysis_url,
t.duration_ms,
t.time_signature

FROM weekly_global_streams AS w
LEFT JOIN artist_genres AS a
ON w.artist_names = a.artist_name
LEFT JOIN track_analytics AS t
ON w.uri = t.uri
ORDER BY rank;

-- Use the below as this provides all available data
SELECT w.rank,
w.uri,
w.artist_names,
w.track_name,
w.peak_rank,
w.previous_rank,
w.weeks_on_chart,
w.streams,
a.artist_genres,
w.week,
t.danceability,
t.energy,
t.key,
t.loudness,
t.mode,
t.speechiness,
t.acousticness,
t.instrumentalness,
t.liveness,
t.valence,
t.tempo,
t.type,
t.id,
t.track_href,
t.analysis_url,
t.duration_ms,
t.time_signature

FROM weekly_global_streams AS w
LEFT JOIN artist_genres AS a
ON w.artist_names = a.artist_name
LEFT JOIN track_analytics AS t
ON w.uri = t.uri
ORDER BY rank;