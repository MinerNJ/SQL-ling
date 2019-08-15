SELECT NOW();

SELECT CURDATE();

SELECT DAYOFWEEK(CURDATE());

SELECT DAYNAME(CURDATE());

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%y');

SELECT DATE_FORMAT(CURDATE(), '%M %D at %h:%i');

CREATE TABLE tweets(content VARCHAR(140), username VARCHAR(20), time TIMESTAMP DEFAULT NOW());