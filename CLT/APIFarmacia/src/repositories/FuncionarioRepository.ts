import { AppDataSource } from "../db/data-source";
import { Funcionario } from "../models/Funcionario";

class FuncionarioRepository {
    funcRepository = AppDataSource.getRepository(Funcionario);
    //INSERT INTO
    async save(funcionario : Funcionario) : Promise<Funcionario> {
        try {
            return await this.funcRepository.save(funcionario);
        } catch (error) {
            console.error("Error saving Funcionario:", error);
            throw error;
        }
    }

}

export default new FuncionarioRepository();