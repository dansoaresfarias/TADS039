package Model;

public class Endereco {

	private String uf;
	private String cidade;
	private String bairro;
	private String rua;
	private int numero;
	private String comp;
	private String cep;

	public Endereco(String uf, String cidade, String bairro, String rua, int numero, String comp, String cep) {
		super();
		this.uf = uf;
		this.cidade = cidade;
		this.bairro = bairro;
		this.rua = rua;
		this.numero = numero;
		this.comp = comp;
		this.cep = cep;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getComp() {
		return comp;
	}

	public void setComp(String comp) {
		this.comp = comp;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	@Override
	public String toString() {
		return "Endereco: UF= " + uf + ", Cidade= " + cidade + 
				", Bairro= " + bairro + ", Rua= " + rua + 
				", Numero= " + numero + ", Complemento= " + comp + 
				", CEP= " + cep;
	}

}
