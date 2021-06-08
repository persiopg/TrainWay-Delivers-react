const { WSAEWOULDBLOCK } = require('constants');
const express = require('express');
const router = express.Router();

router.get('/posts', async function(req,res){
    res.json([{
        name: 'hello'
    }]);
});
router.get('/posts/:id',async function(req,res){
    res.end();
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