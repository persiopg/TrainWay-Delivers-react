const postsData = require('../data/postData');
const { post } = require('../route/route');

exports.getPosts = function (){
    return postsData.getPosts();
};

exports.getById = function (id){
    return postsData.getById(id);
}

exports.savePost = function (post){
    return postsData.savePost(post);
}

exports.deletePost  = function (id){
    return postsData.deletePost(id);
}