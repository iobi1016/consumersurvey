const express = require('express');

const app = express();

var con = require("./connection");

const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({extended:true}));



app.listen(3000, function() {
    console.log("Server is up and running");
}); //route

app.get("/", function(req,res) {
    res.sendFile(__dirname + "/form.html");
});


app.post("/", function(req,res) {
    var fname = req.body.fname;
    var gender = req.body.gender;
    var age = req.body.age;
    var state = req.body.state;
    var shoppingpref = req.body.shoppingpref;
    var onlineplatform = req.body.onlineplatform;
    var groceries = req.body.groceries;
    var general = req.body.general;
    var clothing = req.body.clothing;
    var mall = req.body.mall;
    var groceries2 = req.body.groceries2;
    var groceries3 = req.body.groceries3;
    var product = req.body.product;
    var brand = req.body.brand;


    console.log(fname, gender, age, state, shoppingpref, onlineplatform, groceries, general, clothing, mall, groceries2, groceries3, product, brand);

    var sql = 'INSERT into consumersurvey (fname, gender, age, state, shoppingpref, onlineplatform, groceries, general, clothing, mall, groceries2, groceries3, product, brand) values ?';

    var values = [[fname, gender, age, state, shoppingpref, onlineplatform, groceries, general, clothing, mall, groceries2, groceries3, product, brand]];

con.query(sql, [values], function(err,result) {
    if(err) throw err;

    console.log("Data Uploaded.");
    res.redirect("/");
})
})