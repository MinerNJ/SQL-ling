CREATE TABLE people(name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);

INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES('nick', '1990-12-30', '07:00:00', '1990-12-30 07:00:00');

INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES('kirby', '1993-02-28', '12:30:00', '1993-02-28 12:30:00');

INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES('Reginald', CURDATE(), CURTIME(), NOW());

SELECT name, DAY(birthdate) FROM people;

SELECT name, DAYNAME(birthdate) FROM people;

SELECT name, DAYOFWEEK(birthdate) FROM people;

SELECT name, DAYOFYEAR(birthdate) FROM people;

SELECT name, HOUR(birthtime) FROM people;

SELECT name, birthdate, DATEDIFF(NOW(), birthdate) AS "Days since birth" FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;

SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;

CREATE TABLE comments(content VARCHAR(100), created_at TIMESTAMP DEFAULT NOW());

INSERT INTO comments(content) VALUES('oh wow such amazing skills!');

INSERT INTO comments(content VARCHAR(100)) VALUES('terrible program, all the bugs are features.');

CREATE TABLE comments2(content VARCHAR(100), changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);

INSERT INTO comments2 (content) VALUES('whoooooo!');

INSERT INTO comments2 (content) VALUES('another comment.');

UPDATE comments2 SET content='here\'s yet another comment.' WHERE content='another comment.';




