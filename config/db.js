const mysql = require("mysql2/promise");

const pool = mysql.createPool({
  host: "localhost",
  user: "exam1user",
  password: "exam1pass",
  database: "exam1Practice",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

module.exports = pool;
