SELECT MIN(created_at) FROM users;
SELECT DATE_FORMAT(MIN(created_at), "%M %D %Y") as earliest_date FROM users;

SELECT email, MIN(created_at) FROM users;
SELECT * FROM users WHERE created_at = (SELECT MIN(created_at) FROM users);

SELECT MONTHNAME(created_at), COUNT(created_at) FROM users
GROUP BY MONTHNAME(created_at);
SELECT MONTHNAME(created_at) as month, COUNT(*) as count FROM users
GROUP BY month ORDER BY count DESC;

SELECT COUNT(email) FROM users WHERE email LIKE '%@yahoo.com';
SELECT COUNT(*)AS yahoo_users FROM users WHERE email LIKE '%@yahoo.com';

SELECT CASE
WHEN email LIKE '%@gmail.com' THEN "gmail"
WHEN email LIKE '%@yahoo.com' THEN "yahoo"
WHEN email LIKE '%@hotmail.com' THEN "hotmail"
ELSE "other"
END AS provider, COUNT(*) AS total_users FROM users
GROUP BY provider
ORDER BY total_users DESC;