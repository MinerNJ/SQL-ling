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

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname

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
