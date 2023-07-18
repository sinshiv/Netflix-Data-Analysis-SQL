/* Segment 5: Rating Analysis
Investigate the distribution of ratings across different genres.
Analyse the relationship between ratings and content duration. */
SELECT listed_in, rating, count(*) AS rating_count
FROM netflix_data 
GROUP BY listed_in, rating
ORDER BY rating_count DESC;

-- Investigate the distribution of ratings across different genres:

/* This query will provide a list of genres, their corresponding ratings,
and the count of each rating within each genre.
This way, you can observe how different ratings are distributed
across various genres on Netflix.
*/

SELECT listed_in,
       rating,
       COUNT(*) AS rating_count
FROM netflix_data
GROUP BY listed_in, rating
ORDER BY rating_count desc;

-- Analyse the relationship between ratings and content duration.
/*  breakdown of ratings for each content duration.
You can use this information to see how ratings are distributed
across different content durations.
In this situation, exploring visualizations (graphs ) will be helpful to better
 understand the distribution of ratings and their relationship with content duration.
 */
SELECT duration, listed_in,
       rating,
       COUNT(*) AS rating_count
FROM netflix_data
GROUP BY listed_in ,duration, rating
ORDER BY listed_in , duration, rating;
