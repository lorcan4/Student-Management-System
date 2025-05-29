// Connection => DATA-BASE MYSQL
const mysql = require("mysql");

const Connection = mysql.createPool({
  connectionLimit: 10,
  host: "localhost",
  user: "root",
  password: "",
  database: "Student-Management-System",
});

console.log("✅ MYSQL Pool is ready");

module.exports = Connection;
