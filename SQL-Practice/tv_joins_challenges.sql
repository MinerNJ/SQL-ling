SELECT title, rating FROM series JOIN reviews 
	ON series.id = reviews.series_id;
	
SELECT title, AVG(rating) AS avg_rating FROM series JOIN reviews
	ON series.id = reviews.series_id GROUP BY title ORDER BY AVG(rating) ASC;
	
SELECT first_name, last_name, rating FROM reviewers INNER JOIN reviews ON
	reviewers.id = reviews.reviewer_id;
	
SELECT title AS unreviewed_series FROM series LEFT JOIN reviews ON
	series.id = reviews.series_id WHERE rating IS NULL;
	
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series INNER JOIN reviews ON
	series.id = reviews.series_id GROUP BY genre;
	
SELECT first_name, last_name, COUNT(rating) AS "count", MIN(rating) AS "min", 
MAX(rating) AS "max", AVG(rating) AS "avg_rating", CASE 
WHEN rating IS NOT NULL THEN "Active"
ELSE "INACTIVE"
END
AS status FROM reviewers LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

SELECT title, rating, CONCAT(first_name, " ", last_name) AS reviewer 
FROM reviewers INNER JOIN reviews ON 
	reviewers.id = reviews.reviewer_id
INNER JOIN series ON
	series.id = reviews.series_id
ORDER BY title;