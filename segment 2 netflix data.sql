/* Segment 2: Content Analysis
•	Analyse the distribution of content types (movies vs. TV shows) in the dataset.
•	Determine the top 10 countries with the highest number of productions on Netflix.
•	Investigate the trend of content additions over the years.
•	Analyse the relationship between content duration and release year.
•	Identify the directors with the most content on Netflix.
*/

/* Analyse the distribution of content types (movies vs. TV shows) in the dataset. */
SELECT count(*) 
FROM netflix_data
WHERE type = 'Movie'; -- 6126 rows of data with content type 'Movies' which is about 70% 

SELECT count(*)
FROM netflix_data
WHERE type = 'TV Show'; -- 2664 rows of data with content type 'TV Show' which is about 30%

SELECT type, count(*) AS count
FROM netflix_data 
GROUP BY type;

-- Determine the top 10 countries with the highest number of productions on Netflix.
SELECT country, count(*) AS production_count
FROM netflix_data
GROUP BY country
ORDER BY production_count DESC
LIMIT 10;

-- Investigate the trend of content additions over the years.
SELECT release_year, count(*) as content_additions from netflix_data
group by release_year order by release_year;

-- Analyse the relationship between content duration and release year.
select release_year, duration
from netflix_data order by release_year;

-- Identify the directors with the most content on Netflix.
select director, count(type) as content 
from netflix_data 
group by director 
order by content desc 
limit 10;

SELECT * FROM (
SELECT DISTINCT release_year, rating, count(*) OVER (PARTITION BY release_year, rating) AS count
FROM netflix_data) t
WHERE count > 30
ORDER BY release_year;