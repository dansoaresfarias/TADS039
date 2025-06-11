import "reflect-metadata"
import { DataSource } from "typeorm"
import { dbConfig, dialect } from "../config/db.config"
import { Funcionario } from "../models/Funcionario"
import { Cargo } from "../models/Cargo"

export const AppDataSource = new DataSource({
    type: dialect,
    host: dbConfig.host,
    port: dbConfig.port,
    username: dbConfig.user,
    password: dbConfig.password,
    database: dbConfig.database,
    entities: [Funcionario, Cargo],
    synchronize: false,
    logging: false,
})