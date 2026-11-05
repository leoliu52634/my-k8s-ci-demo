const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Hello K8s! 我的第一個 CI/CD + K8s 成功運作！</h1>');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});