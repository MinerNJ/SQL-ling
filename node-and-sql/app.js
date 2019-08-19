let faker = require('faker');
let mysql = require('mysql');

let connection = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	database : 'legion'
});

let data = [];

for(let i = 0; i < 500; i++){
	data.push([
		faker.internet.email(),
		faker.date.past()
	]);
}

let q = 'INSERT INTO users(email, created_at) VALUES ?';

connection.query(q, [data], function(err, results){
	console.log(err);
	console.log(results);
});

connection.end();

// let person = {email: faker.internet.email()};

// connection.query('INSERT INTO users SET ?', person, function(err, result){
// 	if(err) throw error;
// 	console.log(result);
// })

// let q = 'INSERT INTO users(email) VALUES("wyatt_the_dog@gmail.com")';

// connection.query(q, function(error, results, fields){
// 	if(error) throw error;
// 	console.log(results);
// });

//SELECTING DATA
// var q = 'SELECT COUNT(*) AS total FROM users';

// connection.query(q, function(error, results, fields){
// 	if(error) throw error;
// 	console.log(results);
// });
