CREATE DATABASE insta_clone;
USE insta_clone;

CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_name VARCHAR(255) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	image_url VARCHAR(255) NOT NULL,
	user_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments(
	id INT AUTO_INCREMENT PRIMARY KEY,
	comment_text VARCHAR(255) NOT NULL,
	user_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(photo_id) REFERENCES photos(id)
);

CREATE TABLE likes(
	user_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(photo_id) REFERENCES photos(id),
	PRIMARY KEY(user_id, photo_id)
);

CREATE TABLE follows(
	follower_id INT NOT NULL,
	followee_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (follower_id) REFERENCES users(id),
	FOREIGN KEY (followee_id) REFERENCES users(id),
	PRIMARY KEY(follower_id, followee_id)
);

CREATE TABLE tags(
	id INT AUTO_INCREMENT PRIMARY KEY,
	tag_name VARCHAR(255) UNIQUE,
	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags(
	photo_id INT NOT NULL,
	tag_id INT NOT NULL,
	FOREIGN KEY(photo_id) REFERENCES photos(id),
	FOREIGN KEY(tag_id) REFERENCES tags(id),
	PRIMARY KEY(photo_id, tag_id)
);

INSERT INTO users(user_name)
VALUES('BlueTheCat'),
('CharlieBrown'),
('PresidentMiner');

INSERT INTO photos(image_url, user_id)
VALUES('/catpics', 1),
('/nfl_kickers', 2),
('/my_repository', 3);

INSERT INTO comments(comment_text, user_id, photo_id)
VALUES('meow', 1, 2),
('So cool!', 2, 2),
('Love it', 3, 1);

INSERT INTO likes(user_id, photo_id)
VALUES(1, 1), (2, 1), (1, 2),
(1, 3), (3, 3);

INSERT INTO follows(follower_id, followee_id)
VALUES (1,2), (1,3), (3,1), (2,3);

INSERT INTO tags(tag_name)
VALUES('amazing!'),
('so cool'),
('amazeballs');

INSERT INTO photo_tags(photo_id, tag_id)
VALUES(1,1), (1,2), (2,3), (3,2);
 
 # SELECT photos.image_url, users.user_name FROM photos JOIN users ON
 # 	photos.user_id = users.id;