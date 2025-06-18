import { Request, Response } from "express";
import { Cargo } from "../models/Cargo";
import cargoRepository from "../repositories/CargoRepository";

export default class CargoController {

    async create(req: Request, res: Response) {
        if (!req.body.nome) {
            res.status(400).send({
                message: "Não pode ser vazio o cargo!"
            });
            return;
        }

        try {
            const cargo: Cargo = req.body;
            const savedcargo = await cargoRepository.save(cargo);
            res.status(201).send(savedcargo);
        } catch (err) {
            res.status(500).send({
                message: "Erro ao tentar salvar um cargo."
            });
        }
    }

    async findAll(req: Request, res: Response) {
        try {
            const cargos = await cargoRepository.retrieveAll();
            res.status(200).send(cargos);
        } catch (err) {
            res.status(500).send({
                message: "Erro encontrado quando estava se fazendo a busca por todos os cargos."
            });
        }
    }

    async findOne(req: Request, res: Response) {
        const cbo: number = parseInt(req.params.cbo);

        try {
            const cargo = await cargoRepository.retrieveByCBO(cbo);
            if (cargo) res.status(200).send(cargo);
            else
                res.status(404).send({
                    message: `Não foi encontrado nenhum cargo com esse CBO=${cbo}.`
                });
        } catch (err) {
            res.status(500).send({
                message: `Error não foi possível retornar o cargo com CBO=${cbo}.`
            });
        }
    }

    async findName(req: Request, res: Response) {
        const nome: string = req.params.nome;

        try {
            const cargo = await cargoRepository.retrieveByNome(nome);
            if (cargo) res.status(200).send(cargo);
            else
                res.status(404).send({
                    message: `Não foi encontrado nenhum cargo com esse nome=${nome}.`
                });
        } catch (err) {
            res.status(500).send({
                message: `Error não foi possível retornar o cargo com nome=${nome}.`
            });
        }
    }

    async update(req: Request, res: Response) {
        let cargo: Cargo = req.body;
        cargo.cbo = parseInt(req.params.cbo);        
        try {
            await cargoRepository.update(cargo);
            res.send({
                message: `Cargo ${cargo.nome} atulizado com sucesso!`
            });
        } catch (err) {
            res.status(500).send({
                message: `Error ao atualizar o cargo com CBO=${cargo.cbo}.`
            });
        }
    }

    async delete(req: Request, res: Response) {
        const cbo: number = parseInt(req.params.cbo);

        try {
            const num = await cargoRepository.delete(cbo);

            if (num == 1) {
                res.send({
                    message: "Cargo deletado com sucesso!"
                });
            } else {
                res.send({
                    message: `Não foi possível deletar o cargo com CBO=${cbo}. O cargo não tenha sido encontrado.`,
                });
            }
        } catch (err) {
            res.status(500).send({
                message: `O cargo com CBO=${cbo}, não pode ser deletado.`
            });
        }
    }

    async deleteAll(req: Request, res: Response) {
        try {
            const num = await cargoRepository.deleteAll();

            res.send({ message: `${num} cargos foram deletados com sucesso!` });
        } catch (err) {
            res.status(500).send({
                message: "Algum erro ocorreu enquato deletava todos os cargos."
            });
        }
    }

}