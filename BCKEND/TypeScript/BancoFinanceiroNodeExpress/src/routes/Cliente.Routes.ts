import { Router } from "express";
import ClienteController from "../controllers/ClienteController";


class ClienteRoutes {
  router = Router();
  controller = new ClienteController();

  constructor() {
    this.intializeRoutes();
  }

  intializeRoutes() {

    // Criar um novo Cliente.
    this.router.post("/create", this.controller.createCliente);

    // Retornar os Clientes já cadastrados.
    this.router.get("/getAll", this.controller.getClientes);

    // Retorna um Cliente específico pelo seu cpf
    this.router.get("/:cpf", this.controller.retrieveByCPF);

    // Atualizar um Cliente pelo seu cpf
    this.router.put("/update/:cpf", this.controller.update);

    // Deleta um Cliente pelo seu cpf
    this.router.delete("/delete/:cpf", this.controller.delete);

    // Deleta todos os Clientes
    this.router.delete("/deleteAll", this.controller.deleteAll);
  }
}

export default new ClienteRoutes().router;