const express = require('express')
const app = express()
const port = 8001

app.all('/*', (req, res) => {
  console.log(req.path);
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})