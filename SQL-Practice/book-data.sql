CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

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

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

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