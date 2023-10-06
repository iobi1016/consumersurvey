const mysql = require('mysql');

var con = mysql.createConnection({
    host: "consumer1.crmu2rb70ndq.us-east-1.rds.amazonaws.com",
    user: "admin",
    password: "consumer1",
    database: "consumer"
  });

  con.connect(function(err) {
    if(err) throw err;
    console.log("Database connected Succesfully.");
  });

  module.exports = con;

