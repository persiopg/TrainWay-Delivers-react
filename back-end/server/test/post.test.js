const axios = require('axios');
const postsService = require('../service/postsService');

test('should get posts', async function() {
    const response = await axios({
        url: 'http://localhost:3000/posts',
        method: 'get'
    });
    const posts = response.data;
    expect(posts).toHaveLength(3);
});