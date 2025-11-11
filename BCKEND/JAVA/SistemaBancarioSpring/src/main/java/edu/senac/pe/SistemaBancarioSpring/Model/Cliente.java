package edu.senac.pe.SistemaBancarioSpring.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Cliente {

	@Id
	@Column(nullable = false, length = 14, name = "cpf")
	private String cpf;

	@Column(nullable = false, length = 100, name = "nome")
	private String nome;

	@Column(nullable = false, columnDefinition = "date", name = "dataNasc")
	private String dataNasc;

	@Column(nullable = false, columnDefinition = "int", name = "rg")
	private Integer rg;

	@Column(nullable = false, length = 45, unique = true, name = "email")
	private String email;

	@Column(nullable = false, length = 25, unique = true, name = "telefone")
	private String telefone;

	// private Endereco endereco;

	public Cliente() {

	}

	public Cliente(String nome, String cpf, String dataNasc, Integer rg, String email, String telefone
	/* ,Endereco endereco */) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.dataNasc = dataNasc;
		this.rg = rg;
		this.email = email;
		this.telefone = telefone;
		// this.endereco = endereco;
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

	/*
	 * public Endereco getEndereco() { return endereco; }
	 * 
	 * public void setEndereco(Endereco endereco) { this.endereco = endereco; }
	 */

	public String getCpf() {
		return cpf;
	}

	public String getDataNasc() {
		return dataNasc;
	}

	public Integer getRg() {
		return rg;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}

	public void setRg(Integer rg) {
		this.rg = rg;
	}

	@Override
	public String toString() {
		return "Cliente " + nome + ", portador(a) do CPF " + cpf + ", " + "nasceu em " + dataNasc
				+ ", portador(a) do RG: " + rg + ", " + email + ", Telefone: "
				+ telefone /* + ", que mora em " + endereco */;
	}

}
