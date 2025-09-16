package Model;

import java.util.Date;

public class Cliente {

	private String nome;
	private String cpf;
	private Date dataNasc;
	private Integer rg;
	private String email;
	private String telefone;
	private Endereco endereco;

	public Cliente(String nome, String cpf, Date dataNasc, Integer rg, String email, String telefone,
			Endereco endereco) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.dataNasc = dataNasc;
		this.rg = rg;
		this.email = email;
		this.telefone = telefone;
		this.endereco = endereco;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public String getCpf() {
		return cpf;
	}

	public Date getDataNasc() {
		return dataNasc;
	}

	public Integer getRg() {
		return rg;
	}

	@Override
	public String toString() {
		return "Cliente " + nome + ", portador(a) do CPF " + cpf + ", "
				+ "nasceu em " + dataNasc + ", portador(a) do RG: " + rg + 
				", " + email + ", Telefone: " + telefone + ", que mora em " + endereco;
	}

}
