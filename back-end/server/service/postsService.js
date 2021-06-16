const postsData = require('../data/postData');

exports.getPosts = function (){
    return postsData.getPosts();
};