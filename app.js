var express = require('express');
var logger = require('./logger');
var app = exports.app = express();

app.get('/', function(request, response) {
   response.send("Welcome to Shippable");
});

logger.info('Server started');
app.listen(3000);
