const express = require('express');
const router = express.Router();
const postsService = require('../service/postsService');

router.get('/posts', async function(req,res){
    const posts = await postsService.getPosts();
    res.json(posts);
});
router.get('/posts/:id',async function(req,res){    
    const posts = await postsService.getById(req.params.id);
    res.json(posts);
});
router.post('/posts',async function(req,res){
    res.end();
});
router.put('/posts/:id',async function(req,res){
    res.end();
});
router.delete('/posts/:id',async function(req,res){
    res.end();
});

module.exports = router;