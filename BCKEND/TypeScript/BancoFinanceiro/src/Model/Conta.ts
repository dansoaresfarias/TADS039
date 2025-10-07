import { Agencia } from "./Agencia";
import { Cliente } from "./Cliente";
import { TipoTransacao, Transacao } from "./Transacao";

export class Conta {
    private cliente: Cliente;
    private numero: number;
    private agencia: Agencia;
    private DataAbertura: Date;
    private saldo: number;
    private status: boolean;
    private transacoes: Transacao[];

    constructor(cliente: Cliente, numero: number, agencia: Agencia) {
        this.cliente = cliente;
        this.numero = numero;
        this.agencia = agencia;
        this.DataAbertura = new Date();
        this.saldo = 0;
        this.status = true;
        this.transacoes = [];
    }

    public getCliente(): Cliente {
        return this.cliente;
    }

    public getNumero(): number {
        return this.numero;
    }

    public getAgencia(): Agencia {
        return this.agencia;
    }

    public getDataAbertura(): Date {
        return this.DataAbertura;
    }

    public getSaldo(): number {
        return this.saldo;
    }

    public getStatus(): boolean {
        return this.status;
    }

    public getTransacoes(): Transacao[] {
        return this.transacoes;
    }

    public setStatus(status: boolean): void {
        this.status = status;
    }

    // sacar
	public sacar(valor: number): boolean {
        if (this.status && valor > 0 && this.saldo >= valor) {
            this.saldo -= valor;
            this.transacoes.push(new Transacao(TipoTransacao.SAQUE, valor, "-"));
            return true;
        }else {
            console.log("Saque não autorizado.");
            return false;
        }
    }
	// depositar
	public depositar(valor: number): boolean {
        if (this.status && valor > 0) {
            this.saldo += valor;
            this.transacoes.push(new Transacao(TipoTransacao.DEPOSITO, valor, "+"));
            return true;
        }else {
            console.log("Depósito não autorizado.");
            return false;
        }
    }
	// transferir
	public transferir(valor: number, contaDestino: Conta): boolean {
        if (this.status && contaDestino.getStatus() && valor > 0 && this.saldo >= valor) {
            this.saldo -= valor;
            contaDestino.saldo += valor;
            this.transacoes.push(new Transacao(TipoTransacao.TRANSFERENCIA, valor, "-", contaDestino.getCliente()));
            contaDestino.transacoes.push(new Transacao(TipoTransacao.TRANSFERENCIA, valor, "+", this.getCliente()));
            return true;
        }else {
            console.log("Transferência não autorizada.");
            return false;
        }
    }
	// pagar
	public pagar(valor: number, infoPagamento: string): boolean {
        if (this.status && valor > 0 && this.saldo >= valor) {
            this.saldo -= valor;
            this.transacoes.push(new Transacao(TipoTransacao.PAGAMENTO, valor, "-", undefined, infoPagamento));
            return true;
        }else {
            console.log("Pagamento não autorizado.");
            return false;
        }
    }
	// extrato
    public imprimirExtrato(): void {
        console.log(`\n--- Extrato da Conta ---`);
        console.log(`Cliente: ${this.cliente.getNome()}`);
        console.log(`Número da Conta: ${this.numero}`);
        console.log(`Agência: ${this.agencia.getNumero()}`);        
        if(this.transacoes.length === 0) {
            console.log("Nenhuma transação realizada.");
        } else {
            this.transacoes.forEach((transacao, index) => {
                console.log(`${transacao.toString()}`);
            });
        }
        console.log(`Saldo Atual: R$ ${this.saldo.toFixed(2)}\n`);
    }

    // toString

}