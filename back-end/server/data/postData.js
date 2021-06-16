const database = require('../infra/dataBase');

exports.getPosts = function(){
    return database.query('select * from tb_lanches');
};

exports.getById = function(id){
    return database.query('select * from tb_lanches where id_lanche = $1', [id]);
};

exports.savePost = function(post){
    return database.one('insert into tb_lanches (nm_lanche,preco,descr,Qte,caminhoImg) value ($1, $2, $3, $4,$ 5) returning *', [post.nm_lanche, post.preco, post.descr, post.Qte, post.caminhoImg]);
};

exports.deletePost = function(id){
    return database.none('delete from tb-lanches where id = $1', [id]);
};