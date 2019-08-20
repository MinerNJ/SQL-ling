const mysql = require('mysql')
const express = require('express');
const app = express();

let connection = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	database : 'legion'
});


app.get("/", function(req, res){
	var q = "SELECT COUNT(*) AS count FROM users";
	connection.query(q, function(err, results){
		if (err) throw err;
		let count = results[0].count;
		res.send("We have " + count + " users in our database.");	
	});
});

app.get("/joke", function(req, res){
	let joke = "What do you call a dog that does tricks? A Labracadrabador!"
	res.send(joke);
});

app.get("/random_number", function(req, res){
	let num = Math.floor(Math.random() * 10) + 1;
	res.send("Your lucky number is " + num);
});

app.listen(3000, function(){
	console.log('Server running on port 3000');
});