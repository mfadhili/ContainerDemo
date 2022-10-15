const express = require('express')
const app = express()
app.use(express.json())
app.post('/invoke', (req, res) => {
    console.log('receive', req.body)
    res.send(req.body)
});
app.listen(8000, () => {
    console.log('server is up');
})