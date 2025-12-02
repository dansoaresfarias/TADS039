import { Request, Response } from "express";
import ClienteRepository from "../repositories/ClienteRepository";
import { Cliente } from "../models/Cliente";

export default class ClienteController {

    async createCliente(req: Request, res: Response) {
        if (!req.body.cpf) {
            return res.status(400).json({ message: "CPF é obrigatório! Cadastro de cliente não realizado." });
        }

        try {
            const cliente: Cliente = req.body;
            const novoCliente = await ClienteRepository.createCliente(cliente);
            return res.status(201).json(novoCliente);
        } catch (error) {
            return res.status(500).json({ message: error + " - Erro ao criar cliente." });
        }
    }

    async getClientes(req: Request, res: Response) {
        try {
            const clientes = await ClienteRepository.getClientes();
            return res.status(200).json(clientes);
        } catch (error) {
            return res.status(500).json({ message: error + " - Erro ao buscar os clientes." });
        }
    }

    async retrieveByCPF(req: Request, res: Response) {
        try {
            const cpf: string | undefined = req.params.cpf;
            const cliente = await ClienteRepository.retrieveByCPF(cpf);
            return res.status(200).json(cliente);
        } catch (error) {
            return res.status(500).json({ message: error + " - Erro ao buscar o cliente." });
        }
    }

    async update(req: Request, res: Response) {
        try {
            const cliente: Cliente = req.body;
            await ClienteRepository.update(cliente);
            return res.status(200).json({ message: "Cliente atualizado com sucesso!" });
        } catch (error) {
            return res.status(500).json({ message: error + " - Erro ao atualizar o cliente." });
        }
    }

    async delete(req: Request, res: Response) {
        try {
            const cpf: string | undefined = req.params.cpf;
            const clienteEncontrado = await ClienteRepository.retrieveByCPF(cpf);
            if (!clienteEncontrado) {
                return res.status(404).json({ message: "Cliente não encontrado para o CPF informado." });
            } else {
                const mensagem = await ClienteRepository.delete(clienteEncontrado.cpf);
                return res.status(200).json({ message: mensagem });
            }
        } catch (error) {
            return res.status(500).json({ message: error + " - Erro ao deletar o cliente." });
        }
    }

    async deleteAll(req: Request, res: Response) {
        try {
            const numClientesDeletados = await ClienteRepository.deleteAll();
            return res.status(200).json({ message: `Número de clientes deletados: ${numClientesDeletados}` });
        } catch (error) {
            return res.status(500).json({ message: error + " - Erro ao deletar todos os clientes." });
        }
    }

}