import { Cliente } from "./Cliente";

export enum TipoTransacao {
    DEPOSITO = "Depósito",
    SAQUE = "Saque",
    TRANSFERENCIA = "Transferência",
    PAGAMENTO = "Pagamento"
}

export class Transacao {
    private tipo: TipoTransacao;
    private data: Date;
    private valor: number;
    private clienteTransferencia?: Cliente;
    private tipoValor: string;

    constructor(tipo: TipoTransacao, valor: number, tipoValor: string, clienteTransferencia?: Cliente) {
        this.tipo = tipo;
        this.data = new Date();
        this.valor = valor;
        if(clienteTransferencia) this.clienteTransferencia = clienteTransferencia;
        this.tipoValor = tipoValor;
    }

    public getTipo(): TipoTransacao {
        return this.tipo;
    }

    public getData(): Date {
        return this.data;
    }

    public getValor(): number {
        return this.valor;
    }

    public getClienteTransferencia(): Cliente | undefined {
        return this.clienteTransferencia;
    }

    public getTipoValor(): string {
        return this.tipoValor;
    }

    public toString(): string {
        let info = `Tipo: ${this.tipo}, Data: ${this.data.toLocaleString()}, ${this.tipoValor} R$${this.valor.toFixed(2)}`;
        if (this.clienteTransferencia) {
            info += `, Cliente Transferência: ${this.clienteTransferencia.getNome()}`;
        }
        return info;
    }
}