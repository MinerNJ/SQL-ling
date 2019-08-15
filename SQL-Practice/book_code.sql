SELECT CONCAT(author_fname, ' ',  author_lname) AS 'Full Name' FROM books;

SELECT CONCAT_WS(' - ', title, author_fname, author_lname) AS 'Book and Author' FROM books;

SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'Short Title' FROM books;

SELECT SUBSTRING(
	REPLACE(title, 'e', '3'), 1, 10
	AS 'L33t Cod3'
);

SELECT REVERSE(title) FROM books;

SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' chars long') FROM books;

SELECT UPPER(title) FROM books;

SELECT LOWER(CONCAT(author_lname, ' ', author_fname)) AS 'little names' FROM books; 

SELECT DISTINCT author_fname, author_lname FROM books;

SELECT title FROM books ORDER BY author_lname DESC;

SELECT released_year FROM books ORDER BY released_year;

SELECT title, CONCAT(author_lname, ' ', author_fname), released_year FROM books ORDER BY 3;

SELECT title FROM books LIMIT 6;

SELECT * FROM books LIMIT 1;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10,1;

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

SELECT title FROM books WHERE title LIKE '%the%';

SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname) FROM books;

SELECT COUNT(title) FROM books WHERE title LIKE "%the%";

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT author_lname, author_fname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

SELECT released_year, CONCAT(author_lname, ',', ' ', author_fname), COUNT(*) FROM books GROUP BY released_year;

SELECT MIN(released_year) FROM books;

SELECT MAX(pages) FROM books;

SELECT * FROM books WHERE pages=(SELECT MIN(pages) FROM books);

SELECT * FROM books ORDER BY pages ASC LIMIT 1;

SELECT CONCAT(author_fname, ' ', author_lname), MIN(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname), MAX(pages) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, MAX(pages) AS "most pages" FROM books GROUP BY author_lname, author_fname;

SELECT SUM(pages) FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, SUM(pages) AS "sum of all pages" FROM books GROUP BY author_lname, author_fname;

SELECT AVG(pages) FROM books;

SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;

SELECT title FROM books WHERE title NOT LIKE 'W%';

SELECT * FROM books WHERE author_lname='Eggers' AND released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname='Eggers' && released_year > 2010 && title LIKE '%novel%';

SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015 ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

SELECT CAST('2017-05-02' AS DATETIME);

SELECT name, birthdt FROM people WHERE birthdt BETWEEN CAST('1990-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME);

SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, author_lname FROM books WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 != 0 ORDER BY released_year;

SELECT title, released_year, CASE WHEN released_year >= 2000 THEN 'Modern Lit' 
	ELSE '20th Century Lit' 
END AS "Genre" FROM books;

SELECT title, stock_quantity, CASE WHEN stock_quantity BETWEEN 0 AND 50 THEN '*' 
	WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
	ELSE '***'
END AS "Stock" FROM books;

SELECT title, stock_quantity, CASE WHEN stock_quantity BETWEEN 0 AND 50 THEN '*' 
	WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
	WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
	ELSE '****'
END AS "Stock" FROM books;

SELECT title, stock_quantity, CASE WHEN stock_quantity <= 50 THEN '*'
	WHEN stock_quantity <= 100 THEN '**'
	WHEN stock_quantity<= 150 THEN '***'
	ELSE '****'
END AS "Stock" FROM books;