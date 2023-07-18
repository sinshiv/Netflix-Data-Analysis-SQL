/* Segment 4: Release Date Analysis
Determine the distribution of content releases by month and year.
Analyse the seasonal patterns in content releases.
Identify the months and years with the highest number of releases. */

/*Determine the distribution of content releases by month and year.*/
SELECT
    MONTH(STR_TO_DATE(date_added, '%m/%d/%Y')) AS month,
    YEAR(STR_TO_DATE(date_added, '%m/%d/%Y')) AS year,
    COUNT(*) AS count
FROM Netflix_data
WHERE date_added IS NOT NULL
GROUP BY month, year;

  /*Analyse the seasonal patterns in content releases. */
SELECT
    MONTH(STR_TO_DATE(date_added, '%m/%d/%Y')) AS month,
    YEAR(STR_TO_DATE(date_added, '%m/%d/%Y')) AS year,
    COUNT(*) AS count
FROM Netflix_data
WHERE date_added IS NOT NULL
GROUP BY month, year
ORDER BY year, month;

  /*Identify the months and years with the highest number of releases.*/
SELECT
    MONTH(STR_TO_DATE(date_added, '%m/%d/%Y')) AS month,
    YEAR(STR_TO_DATE(date_added, '%m/%d/%Y')) AS year,
    COUNT(*) AS Highest_release
FROM Netflix_data
WHERE date_added IS NOT NULL
GROUP BY month, year
ORDER BY Highest_release DESC;