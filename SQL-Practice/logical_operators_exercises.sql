SELECT title, released_year FROM books WHERE released_year <= 1980 ORDER BY released_year;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' || author_lname = 'Chabon';

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Lahiri' && released_year > 2000;

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' || author_lname LIKE 'S%';

SELECT title, author_lname, CASE WHEN title LIKE '%stories%' THEN 'Short Stories'
	WHEN title IN('Just Kids', 'A Heartbreaking Work') THEN "Memoir"
	ELSE 'Novel'
END AS "Type" FROM books;

SELECT title, author_lname, CONCAT(COUNT(*), " books") FROM books GROUP BY author_lname, author_fname;
