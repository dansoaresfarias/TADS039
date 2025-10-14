package Model;

import java.util.ArrayList;
import java.util.Date;

public abstract class Conta {

	private Cliente cliente;
	private int numero;
	private Agencia ag;
	private Date data;
	private double saldo;
	private boolean status;
	private ArrayList<Transacao> transacoes;

	public Conta(Cliente cliente, int numero, Agencia ag) {
		super();
		this.cliente = cliente;
		this.numero = numero;
		this.ag = ag;
		this.data = new Date();
		this.saldo = 0.0;
		this.status = true;
		this.transacoes = new ArrayList<Transacao>();
	}

	public Conta(Cliente cliente, int numero, Agencia ag, Date data, double saldo) {
		super();
		this.cliente = cliente;
		this.numero = numero;
		this.ag = ag;
		this.data = data;
		this.saldo = saldo;
		this.status = true;
		this.transacoes = new ArrayList<Transacao>();
	}

	// sacar
	public boolean sacar(double valor) {
		if (valor > 0 ) {
			if (this.saldo >= valor) {
				this.saldo -= valor; // this.saldo = this.salado - valor
				Transacao transacao = new Transacao(TipoTransacao.Saque, valor, 
						null, null, '-');
				this.transacoes.add(transacao);
				return true;
			} else {
				System.out.println("Saldo insuficiente!");
				return false;
			}			
		} else {
			System.out.println("Valor inválido!");
			return false;
		}
	}

	// depositar
	public boolean depositar(double valor) {
		if (valor > 0) {
			this.saldo += valor;
			Transacao transacao = new Transacao(TipoTransacao.Déposito, valor,
					null, null, '+');
			this.transacoes.add(transacao);
			return true;
		} else {
			System.out.println("Valor inválido!");
			return false;
		}
	}

	// pagar
	public boolean realizarPagamento(double valor, String infoPag) {
		if (valor > 0 && infoPag != null) {
			if (this.saldo >= valor) {
				this.saldo -= valor;
				Transacao t = new Transacao(TipoTransacao.Pagamento, 
						valor, null, infoPag, '-');
				this.transacoes.add(t);
				return true;
			} else {
				System.out.println("Saldo insuficiente!");
				return false;
			}
		} else {
			System.out.println("Valores inválidos!");
			return false;
		}
	}

	// transferir
	public boolean transferir(double valor, Conta contaDestino) {
		if (valor > 0 && contaDestino != null && contaDestino.status) {
			if (this.saldo >= valor) {
				this.saldo -= valor;
				Transacao transacao = new Transacao(TipoTransacao.Transferência, valor, 
						contaDestino.getCliente(), null, '-');
				this.transacoes.add(transacao);
				contaDestino.saldo += valor;
				Transacao transacaoDestino = new Transacao(TipoTransacao.Transferência, 
						valor, this.cliente, null, '+');
				contaDestino.transacoes.add(transacaoDestino);
				return true;
			} else {
				System.out.println("Saldo insuficiente!");
				return false;
			}
		} else {
			System.out.println("Valores inválidos!");
			return false;
		}
	}

	// extrato
	public String imprimirExtrato() {
		String extrato = ".:: Extrato da Conta " + this.numero + " ::.\n";
		extrato += "Cliente: " + this.cliente.getNome() + ", CPF: " + 
				this.cliente.getCpf() + "\n" + "Agência " + this.ag.getNome() +
				", Nº " + this.ag.getNumero() + "\n";
		for (Transacao transacao : transacoes) {
			extrato += transacao + "\n";
		}
		extrato += "Saldo atual: R$ " + this.saldo;
		return extrato;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public Agencia getAg() {
		return ag;
	}

	public void setAg(Agencia ag) {
		this.ag = ag;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public Date getData() {
		return data;
	}

	public double getSaldo() {
		return saldo;
	}

	public ArrayList<Transacao> getTransacoes() {
		return transacoes;
	}

}
