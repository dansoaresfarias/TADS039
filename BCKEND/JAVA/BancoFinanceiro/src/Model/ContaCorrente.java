package Model;

import java.util.Date;

public class ContaCorrente extends Conta {

	private double taxaManutencao;

	// Polimorfismo de Sobrecarga
	public ContaCorrente(Cliente cliente, int numero, Agencia ag, Date data, double saldo) {
		super(cliente, numero, ag, data, saldo);
		// TODO Auto-generated constructor stub
		this.taxaManutencao = 0.01;
	}

	// Polimorfismo de Sobrecarga
	public ContaCorrente(Cliente cliente, int numero, Agencia ag) {
		super(cliente, numero, ag);
		// TODO Auto-generated constructor stub
		this.taxaManutencao = 0.01;
	}

	public double getTaxaManutencao() {
		return taxaManutencao;
	}

	public void setTaxaManutencao(double taxaManutencao) {
		this.taxaManutencao = taxaManutencao;
	}

	// Polimorfismo de Sobrescrita
	@Override
	public boolean sacar(double valor) {
		return super.sacar(valor + valor * this.taxaManutencao);
	}
}
