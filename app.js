var express = require('express');

var app = exports.app = express();

app.get('/', function(request, response) {
   response.send("Welcome to Shippable");
});


app.listen(3000);
