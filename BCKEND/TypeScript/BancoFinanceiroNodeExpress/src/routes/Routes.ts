import { Application } from 'express';
import homeRoutes from './Home.Routes';
import clienteRoutes from './Cliente.Routes';

export default class Routes {
    constructor(app: Application) {
        app.use('/sistemaBancario', homeRoutes);
        app.use('/sistemaBancario/cliente', clienteRoutes);
    }
}