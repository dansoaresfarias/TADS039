package Model;

import java.util.Date;

enum TipoTransacao {Déposito, Saque, Pagamento, Transferência};

public class Transacao {
	
	private TipoTransacao tipo;
	private Date data;
	private double valor;
	private Cliente clienteTransferencia;
	private char tipoValor;
	private String infoPagamento;
	
	public Transacao(TipoTransacao tipo, double valor, Cliente clienteTransferencia, 
			String infoPag, char tipoValor) {
		super();
		this.tipo = tipo;
		this.valor = valor;
		this.data = new Date();
		this.clienteTransferencia = clienteTransferencia;
		this.infoPagamento = infoPag;
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
	
	public String getInfoPagamento() {
		return infoPagamento;
	}

	@Override
	public String toString() {
		if (clienteTransferencia != null) {
			return data.getDate() + "/" + (data.getMonth()+1) + "/" + (data.getYear()+1900)
			+ "\t" + tipo + ", " + clienteTransferencia.getNome() + 
			"\t" + tipoValor + "R$ " + valor;
		} else if (infoPagamento != null){
			return data.getDate() + "/" + (data.getMonth()+1) + "/" + (data.getYear()+1900)
			+ "\t" + tipo + ", " + infoPagamento + 
			"\t" + tipoValor + "R$ " + valor;
		} else {
			return data.getDate() + "/" + (data.getMonth()+1) + "/" + (data.getYear()+1900)
			+ "\t" + tipo + "\t" + tipoValor + "R$ " + valor;
		}
	}
	
}
