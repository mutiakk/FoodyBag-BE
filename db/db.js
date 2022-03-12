const mysql= require('mysql');

const connection =mysql.createConnection({
    host:"localhost",
    user:"root",
    database: "node-foody",
    password:""
});

connection.connect();

module.exports=connection;