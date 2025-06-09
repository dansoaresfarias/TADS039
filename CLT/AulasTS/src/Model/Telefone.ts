export class Telefone {
    private numero: string;

    constructor(numero: string) {
        this.numero = numero;
    }

    getNumero(): string {
        return this.numero;
    }
}