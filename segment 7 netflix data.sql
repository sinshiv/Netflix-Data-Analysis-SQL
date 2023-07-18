

/* Segment 7: International Expansion Analysis
Identify the countries where Netflix has expanded its content offerings.
Analyse the distribution of content types in different countries.
Investigate the relationship between content duration and country of production. */

-- Identify the countries where Netflix has expanded its content offerings.
SELECT DISTINCT country 
FROM netflix_data
WHERE date_added IS NOT NULL;

-- Analyse the distribution of content types in different countries.
SELECT country,
COUNT(CASE WHEN type ='Movie' THEN 1 END) AS num_movies,
COUNT(CASE WHEN type = 'TV Show' THEN 1 END) AS num_tv_shows
FROM netflix_data
GROUP BY country;

-- Investigate the relationship between content duration and country of production.
SELECT country, AVG(CASE WHEN type = 'Movie' THEN duration_minutes END) AS avg_movie_duration,
AVG(CASE WHEN type ='TV Show' THEN duration_seasons END) AS avg_tv_show_duration
FROM (
SELECT *, CASE WHEN type = 'Movie' THEN CAST(SUBSTRING_INDEX(duration, '', 1) AS UNSIGNED) END AS duration_minutes,
CASE WHEN type = 'TV Show' THEN CAST(SUBSTRING_INDEX(duration, '', 1) AS UNSIGNED) END AS duration_seasons
FROM netflix_data ) AS data 
GROUP BY country;

