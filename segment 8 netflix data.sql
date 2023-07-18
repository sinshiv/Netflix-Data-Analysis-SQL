

/* Segment 8: Recommendations for Content Strategy
Based on the analysis, provide recommendations for the types of content Netflix should focus on producing. 
Identify potential areas for expansion and growth based on the analysis of the dataset.
*/

/*Recommendations for Content Strategy Based on the analysis, provide recommendations for the types of content Netflix should focus on producing.*/
SELECT listed_in, COUNT(*) AS Content_count
FROM Netflix_data
GROUP BY listed_in
ORDER BY Content_count ;

  /*Identify potential areas for expansion and growth based on the analysis of the dataset.*/
SELECT country, COUNT(*) AS count
FROM Netflix_data
WHERE country IS NOT NULL
GROUP BY country
ORDER BY count DESC
LIMIT 10;

