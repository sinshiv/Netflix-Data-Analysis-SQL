/*Segment 6: Co-occurrence Analysis
Identify the most common pairs of genres/categories that occur together in content.
Analyse the relationship between genres/categories and content duration. */

SELECT * FROM (
SELECT DISTINCT type, listed_in, count(*) OVER (PARTITION BY type, listed_in) AS cnt
FROM netflix_data
)t
WHERE cnt > 1
ORDER BY type, listed_in;

SELECT * FROM
(
SELECT distinct type,listed_in,duration,
count(*) over (partition by type,listed_in,duration) as co_occurence
FROM netflix_data
) t
where co_occurence>1
ORDER BY type,listed_in,duration;


SELECT * FROM
(
SELECT Distinct type, listed_in,
count(*) OVER (PARTITION BY type, listed_in) AS co_occurence
FROM netflix_data
) t
WHERE co_occurence > 1
ORDER BY type, listed_in;