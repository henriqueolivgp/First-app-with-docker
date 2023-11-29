const express = require('express');

const app = express();

app.get('/', function (req, res) {
    
    res.send('trybe');
    
});

app.listen(3000, function () {
   
    console.log('Servidor a correr na porta 3000');

});