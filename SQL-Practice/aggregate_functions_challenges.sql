SELECT COUNT(*) FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT CONCAT(author_fname, ' ', author_lname), AVG(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname), MAX(pages) FROM books;

SELECT released_year AS "year", COUNT(book_id) AS "# books", AVG(pages) AS "avg pages" FROM books GROUP BY released_year ASC;