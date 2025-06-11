export const dbConfig = {
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'root',
  database: 'apifarmacia',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};

export const dialect = "mysql";