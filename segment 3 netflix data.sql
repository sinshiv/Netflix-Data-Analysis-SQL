/* Segment 3: Genre and Category Analysis
Determine the unique genres and categories present in the dataset.
Calculate the percentage of movies and TV shows in each genre.
Identify the most popular genres/categories based on the number of productions.
Calculate the cumulative sum of content duration within each genre.
*/

/*-	Determine the unique genres and categories present in the dataset.*/
SELECT TYPE as genres,listed_in as categories 
FROM netflix_data 
GROUP BY type,listed_in; -- 513 rows returned

/*-	Calculate the percentage of movies and TV shows in each genre.*/
SELECT TYPE,COUNT(show_id)*100/(select count(show_id) from netflix_data) as percentage 
FROM netflix_data 
GROUP BY type;  -- Movie 69.6928% and TV show 30.3072%

/* Identify the most popular genres/categories based on the number of productions. */
SELECT listed_in AS genre_category, count(*) AS production_count
FROM netflix_data
GROUP BY listed_in
ORDER BY production_count DESC;

/*-	Calculate the cumulative sum of content duration within each genre.*/
SELECT type,sum(duration) AS cumulative_sum 
FROM netflix_data 
GROUP BY type; 

SELECT * FROM
( SELECT DISTINCT type AS genre, listed_in AS categories
FROM netflix_data) t;

 

