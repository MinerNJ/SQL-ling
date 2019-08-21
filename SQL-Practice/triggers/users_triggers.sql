DELIMITER $$

CREATE TRIGGER must_be_adult 
BEFORE INSERT ON users FOR EACH ROW
BEGIN
	IF NEW.age < 18
    	THEN
        	SIGNAL SQLSTATE '45000' /* 45000 is a generic error that is user-defined. */
            	SET MESSAGE_TEXT = 'Must be an adult!';
        END IF;
    END;
	
$$ DELIMITER;

INSERT INTO users(username, age) VALUES("Yang", 14);
