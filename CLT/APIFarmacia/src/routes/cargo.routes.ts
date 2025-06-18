import { Router } from "express";
import CargoController from "../controllers/cargo.controller";


class cargoRoutes {
  router = Router();
  controller = new CargoController();

  constructor() {
    this.intializeRoutes();
  }

  intializeRoutes() {

    // Criar um novo cargo.
    this.router.post("/cargo", this.controller.create);

    // Retornar os cargos já cadastrados.
    this.router.get("/cargos", this.controller.findAll);

    // Retorna um cargo específico pelo seu id
    this.router.get("/cargo/:cbo", this.controller.findOne);

    // Retorna um cargo específico pelo seu nome
    this.router.get("/cargo/nome/:nome", this.controller.findName);

    // Atualizar um cargo pelo seu id
    this.router.put("/cargo/:cbo", this.controller.update);

    // Deleta um cargo pelo seu id
    this.router.delete("/cargo/:cbo", this.controller.delete);

    // Deleta todos os cargos
    this.router.delete("/cargos/", this.controller.deleteAll);
  }
}

export default new cargoRoutes().router;