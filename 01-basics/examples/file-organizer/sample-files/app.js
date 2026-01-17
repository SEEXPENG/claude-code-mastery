// Main application entry point
// TODO: Add authentication middleware
const express = require('express');
const { organizeFiles } = require('./utils');
const app = express();

// FIXME: Need proper error handling
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// NOTE: This endpoint organizes files
app.post('/organize', async (req, res) => {
  const result = await organizeFiles(req.body.path);
  res.json(result);
});

app.listen(3000, () => {
  console.log('Server running on port 3000');
});
