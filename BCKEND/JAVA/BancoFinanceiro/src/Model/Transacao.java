package Model;

import java.util.Date;

enum TipoTransacao {Déposito, Saque, Pagamento, Transferência};

public class Transacao {
	
	private TipoTransacao tipo;
	private Date data;
	private double valor;
	private Cliente clienteTransferencia;
	private char tipoValor;
	
	public Transacao(TipoTransacao tipo, double valor, Cliente clienteTransferencia, char tipoValor) {
		super();
		this.tipo = tipo;
		this.valor = valor;
		this.data = new Date();
		this.clienteTransferencia = clienteTransferencia;
		this.tipoValor = tipoValor;
	}

	public TipoTransacao getTipo() {
		return tipo;
	}

	public Date getData() {
		return data;
	}

	public double getValor() {
		return valor;
	}

	public Cliente getClienteTransferencia() {
		return clienteTransferencia;
	}

	public char getTipoValor() {
		return tipoValor;
	}

	@Override
	public String toString() {
		if (clienteTransferencia != null) {
			return data.getDay() + "/" + data.getMonth() + "/" + data.getYear()
			+ "\t" + tipo + ", " + clienteTransferencia + 
			"\t" + tipoValor + "R$ " + valor;
		} else {
			return data.getDay() + "/" + data.getMonth() + "/" + data.getYear()
			+ "\t" + tipo + "\t" + tipoValor + "R$ " + valor;
		}
	}
	
}
