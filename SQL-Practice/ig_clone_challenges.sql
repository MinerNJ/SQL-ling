SELECT * FROM users ORDER BY created_at ASC LIMIT 5;

SELECT COUNT(*), DAYNAME(created_at) FROM users GROUP BY DAYNAME(created_at) ORDER BY COUNT(*) DESC;

SELECT username, image_url FROM users LEFT JOIN photos ON 
	users.id = photos.user_id
WHERE photos.id IS NULL;

SELECT photos.id, username, photos.image_url, COUNT(*) FROM photos INNER JOIN likes ON
	likes.photo_id = photos.id
INNER JOIN users ON
	photos.user_id = users.id
GROUP BY photos.id ORDER BY COUNT(*) DESC LIMIT 1;

SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users);

SELECT tags.tag_name, COUNT(*) FROM photo_tags JOIN tags ON
	photo_tags.tag_id = tags.id
GROUP BY tags.id ORDER BY COUNT(*) DESC LIMIT 5;

SELECT username, COUNT(*) FROM users INNER JOIN likes ON
	users.id = likes.user_id
GROUP BY likes.user_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM photos);