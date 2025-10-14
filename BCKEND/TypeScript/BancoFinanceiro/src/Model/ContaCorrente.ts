import { Agencia } from "./Agencia";
import { Cliente } from "./Cliente";
import { Conta } from "./Conta";

export class ContaCorrente extends Conta {
    private taxaManutencao: number;

    constructor(cliente: Cliente, numero: number, agencia: Agencia) {
        super(cliente, numero, agencia);
        this.taxaManutencao = 0.01; // Taxa de manutenção por sacar
    }

    public getTaxaManutencao(): number {
        return this.taxaManutencao;
    }

    public setTaxaManutencao(taxa: number): void {
        this.taxaManutencao = taxa;
    }

    public sacar(valor: number): boolean {
        return super.sacar(valor + valor * this.taxaManutencao);
    }
}