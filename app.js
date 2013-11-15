var express = require('express');
var logger = require('./logger');
var app = exports.app = express();

app.use(express.bodyParser());
app.get('/', function(request, response) {
   response.sendfile('./views/index.html');
});
app.post('/',function(req,res){
logger.info('Callback');
var user=req.body.name,
    pass=req.body.pass;
    logger.info('User: '+user);
res.end();
});
logger.info('Server started');
app.listen(3000);
