import { AppDataSource } from "../db/data-source";
import { Cargo } from "../models/Cargo";

class cargoRepository {

    cargoRepository = AppDataSource.getRepository(Cargo);

    async save(cargo: Cargo): Promise<Cargo> {
        try {
            return await this.cargoRepository.save(cargo);
        } catch (error) {
            console.error("Error saving Cargo:", error);
            throw error;
        }
    }

    async retrieveAll(): Promise<Array<Cargo>> {
        try {
            return await this.cargoRepository.find();
        } catch (error) {
            throw new Error("Falha ao retornar os cargos!");
        }
    }

    async retrieveByCBO(cbo: number): Promise<Cargo | null> {
        try {
            return await this.cargoRepository.findOneBy({
                cbo: cbo,
            });
        } catch (error) {
            throw new Error("Falha ao buscar o cargo!");
        }
    }

    async retrieveByNome(nome: string): Promise<Cargo | null> {
        try {
            return await this.cargoRepository.findOneBy({
                nome: nome,
            });
        } catch (error) {
            throw new Error("Falha ao buscar o cargo!");
        }
    }

    async update(cargo: Cargo) {
        const { cbo, nome } = cargo;
        try {
             await this.cargoRepository.save(cargo);
        } catch (error) {
            throw new Error("Falha ao atualizar o cargo!");
        }
    }

    async delete(cbo: number): Promise<number> {
        try {
            const CargoEncontrado = await this.cargoRepository.findOneBy({
                cbo: cbo,
            });
            if (CargoEncontrado) {
                this.cargoRepository.delete(CargoEncontrado);
                return 1;
            }
            return 0;
        } catch (error) {
            throw new Error("Falha ao deletar o cargo!");
        }
    }

    async deleteAll(): Promise<number> {
        try {
            let num = this.cargoRepository.query("select count(idCargo) from Cargo;");
            await this.cargoRepository.query("delete from Cargo;");
            return num;
        } catch (error) {
            throw new Error("Falha ao deletar todos os cargos!");
        }
    }

}

export default new cargoRepository();