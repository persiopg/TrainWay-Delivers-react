const database = require('../infra/dataBase');

exports.getPosts = function(){
    return database.query('select * from tb_lanches');
}
