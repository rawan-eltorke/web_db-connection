// Import required modules
const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');

// Create an Express application
const app = express();

// Configure middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Create a MySQL connection pool
const pool = mysql.createPool({
  connectionLimit: 10,
  host: 'db', // Docker Compose service name
  user: 'root', // MySQL user
  password: 'password', // MySQL password
  database: 'students', // Database name
});

// Define a route to fetch data from the database
app.get('/data', (req, res) => {
  // Use the connection pool to query the database
  pool.query('SELECT * FROM Students', (error, results) => {
    if (error) {
      return res.status(500).json({ error: 'Database query error' });
    }
    res.json(results);
  });
});

// Start the Express server
const port = 3000;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
