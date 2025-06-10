const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Example: Database connection (replace with actual DB connection logic)
const DB_HOST = process.env.DB_HOST || 'localhost';
const DB_USER = process.env.DB_USER || 'root';
const DB_PASSWORD = process.env.DB_PASSWORD || 'password';
const DB_NAME = process.env.DB_NAME || 'mydb';

app.get('/api/hello', (req, res) => {
  res.json({ message: 'Hello from Application Server!', dbHost: DB_HOST, dbName: DB_NAME });
});

app.listen(PORT, () => {
  console.log(`Application server running on port ${PORT}`);
  console.log(`Attempting to connect to DB at ${DB_HOST}/${DB_NAME} (mock connection)`);
});
