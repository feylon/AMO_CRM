import pkg from "pg";
import dotenv from "dotenv"

dotenv.config();
const { user, database_PORT, password, host, database} = process.env;
console.log(process.env.PORT)
console.log(user, database_PORT, password, host, database)
const { Pool } = pkg;
const pool = new Pool({
  host,
  database,
  user,
  password,
  port: database_PORT,
});

export default pool;
