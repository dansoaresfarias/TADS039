import { AppDataSource } from "./db/data-source";

console.log("Iniciando o servidor BancoFinanceiroNodeExpress...");

AppDataSource.initialize()
    .then(() => {
        // here you can start to work with your database
        console.log(`Database is running.`);        
    })
    .catch((error) => console.log(error));