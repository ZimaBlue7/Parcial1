const Pool = require("pg").Pool;

const pool = new Pool({
  user: "postgres",
  password: "199656",
  database: "attendance",
  host: "localhost",
  port: "5432",
});

module.exports = pool;
