import { Application } from "express";
import cargoRoutes from "./cargo.routes";
// Concentrador de rotas
export default class Routes {
    constructor(app: Application) {
        app.use("/apifarmacia", cargoRoutes);
    }
}