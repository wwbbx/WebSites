// Generated by CoffeeScript 1.6.3
var app, express, http, path;

express = require('express');

path = require('path');

http = require('http');

app = express();

app.set('port', process.env.PORT || 3000);

app.use(express.favicon());

app.use(express.logger('dev'));

app.use(express.json());

app.use(express.urlencoded());

app.use(express.methodOverride());

app.use(app.router);

app.use(express.bodyParser());

app.use(express["static"](path.join(__dirname, '../app')));

console.log("current directory is: " + __dirname);

app.use(function(err, req, res, next) {
  console.error(err.stack);
  return res.send(500, "Something broke!");
});

app.set('env', 'development');

if ('development' === app.get('env')) {
  app.use(express.errorHandler());
}

http.createServer(app).listen(app.get('port'), function() {
  return console.log('Express server listening on port ' + app.get('port'));
});
