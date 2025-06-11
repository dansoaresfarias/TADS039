import { AppDataSource } from "./db/data-source";
import { Funcionario } from "./models/Funcionario";
import { Cargo } from "./models/Cargo";
import funcRep from "./repositories/FuncionarioRepository";
import cargoRep from "./repositories/CargoRepository"

AppDataSource.initialize()
    .then(() => {
        // here you can start to work with your database
        console.log(`Database is running.`);
        const marco = new Funcionario("706.607.777-66", "João Marcos Tavares", "jmt@gmail.com", "M", "Solteiro", new Date('1997-07-28'), 40, 3578, new Date('2023-02-05 08:00:00'));

        const cargo1: Cargo = new Cargo(325110, "Técnico de Laboratório");
        const cargo2: Cargo = new Cargo(515210, "Auxiliar de Farmácia");
        const cargo3: Cargo = new Cargo(325115, "Técnico em Farmácia");
        const cargo4: Cargo = new Cargo(515210, "Auxiliar de Farmácia de Manipulação");

        try {
            //console.log(funcRep.save(marco));
            cargoRep.save(cargo1);
            cargoRep.save(cargo2);
            cargoRep.save(cargo3);
            console.log(cargoRep.retrieveAll());
            console.log(cargoRep.retrieveByCBO(521130));
            console.log(cargoRep.update(cargo4));
            console.log(cargoRep.retrieveByNome("Farmacêutico"));
            cargoRep.delete(325115);
            console.log()
        } catch (error) {
            console.log(error);
        }
    })
    .catch((error) => console.log(error));





//console.log("Hello, World!");