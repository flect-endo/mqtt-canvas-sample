'use strict';

var express = require('express');
var morgan = require('morgan');
var compression = require('compression');
var app = express();

app.set('port', process.env.PORT || 3000);

app.use(morgan('short'));
app.use(compression());
app.use(express.static(__dirname + '/dist'));

app.listen(app.get('port'), function() {
  console.log('server listening on port %s', app.get('port'));
});