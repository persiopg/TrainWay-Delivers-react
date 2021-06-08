const express = require('express');
const app = express();

app.use('/',require('./route/route'));

app.listen(3000);
