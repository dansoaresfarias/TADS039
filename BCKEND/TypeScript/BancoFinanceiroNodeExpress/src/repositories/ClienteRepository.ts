import { AppDataSource} from "../db/data-source";
import { Cliente } from "../models/Cliente";

class ClienteRepository {
    clienteRepository = AppDataSource.getRepository(Cliente);

    async createCliente(cliente: Cliente): Promise<Cliente> {
        try {
            return this.clienteRepository.save(cliente);
        } catch (error) {
            throw new Error(`Erro ao criar cliente: ${error}`);
        }
    }

    async getClientes(): Promise<Array<Cliente>> {
        try {
            return this.clienteRepository.find();
        } catch (error) {
            throw new Error(`Erro ao buscar os clientes: ${error}`);
        }
    }

    async retrieveByCPF(cpf: string): Promise<Cliente | null> {
        try {
            return this.clienteRepository.findOneBy({
                cpf: cpf,
            });
        } catch (error) {
            throw new Error("Falha ao buscar o cliente!");
        }
    }

    async update(cliente: Cliente) {
        const { cpf, nome, dataNascimento, rg, email, telefone } = cliente;
        try {
            this.clienteRepository.save(cliente);
        } catch (error) {
            throw new Error("Falha ao atualizar o cliente!");
        }
    }

    async delete(cpf: string): Promise<String> {
        try {
            return this.clienteRepository.delete(cpf).then(() => {
                return "Cliente deletado com sucesso!";
            });
        } catch (error) {
            throw new Error("Falha ao deletar o cliente!");
        }
    }

    async deleteAll(): Promise<number> {
        try {
            let num = this.clienteRepository.query("select count(cpf) from clientes;");
            this.clienteRepository.query("delete from clientes;");
            return num;
        } catch (error) {
            throw new Error("Falha ao deletar todos os clientes!");
        }
    }

}

export default new ClienteRepository();