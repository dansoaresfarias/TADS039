import { Agencia } from "./Agencia";
import { Cliente } from "./Cliente";
import { Conta } from "./Conta";

export class ContaPoupanca extends Conta {
    private taxaRendimento: number;

    constructor(cliente: Cliente, numero: number, agencia: Agencia) {
        super(cliente, numero, agencia);
        this.taxaRendimento = 0.02; // Rendimento por deposito
    }

    public getTaxaRendimento(): number {
        return this.taxaRendimento;
    }

    public setTaxaRendimento(taxa: number): void {
        this.taxaRendimento = taxa;
    }

    public depositar(valor: number): boolean {
        return super.depositar(valor + valor * this.taxaRendimento);
    }
}