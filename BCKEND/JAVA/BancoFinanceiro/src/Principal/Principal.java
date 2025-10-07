package Principal;

import java.util.Date;

import Model.Agencia;
import Model.Cliente;
import Model.Endereco;
import Model.Conta;

public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//System.out.println("Olá mundo!");
		
		Endereco endGi = new Endereco("PE", "Recife", "Casa Amarela",
				"Professor Alexandre Borges", 123, null, "50070-790");
		Endereco endJosue = new Endereco("PE", "Olinda", "Aguas longas",
				"Rua Molhada", 321, null, "50700-780");
		
		Endereco endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro",
				"Rua Suassuna", 1235, null, "50070-750");
		//endGi.bairro = "Afogados"; // Errado
		//endGi.setBairro("Afogados"); // Certo				
		//System.out.println(endGi);
		
		Cliente gislany = new Cliente("Gislany Araújo", "123.456.789-00",
				new Date(1998, 8, 30), 4321245, "gi.araujo@gmail.com", 
				"81978877887", endGi);
		
		Cliente josue = new Cliente("Josué Oliveira", "321.456.789-00",
				new Date(2005, 9, 31), 1111245, "josue.oliveira@gmail.com", 
				"81978877667", endJosue);
		//System.out.println(gislany);
		Agencia agSuassuna = new Agencia("Ag Suassuna", 1235, "8121234556",
				"agsuassuna@banco.senac.br", endAgSuassuna);
		
		//System.out.println(agSuassuna);
		
		Conta contaGi = new Conta(gislany, 123456, agSuassuna);
		Conta contaJosue = new Conta(josue, 456456, agSuassuna);
		
		contaGi.depositar(4500);
		contaGi.sacar(500);
		contaGi.realizarPagamento(1450, "Aluguel");
		contaGi.realizarPagamento(2150, "Cartao Nubank");
		contaGi.realizarPagamento(80, "Energia");
		contaGi.realizarPagamento(50, "Internet");
		
		contaJosue.depositar(3000);
		contaJosue.realizarPagamento(800, "Plano de Saúde");
		contaJosue.realizarPagamento(120, "Academia");
		contaJosue.realizarPagamento(1500, "Cartao Nubank");
		contaJosue.realizarPagamento(70, "Energia");
		contaJosue.transferir(100, contaGi);
		
		System.out.println(contaGi.imprimirExtrato()+'\n');
		System.out.println(contaJosue.imprimirExtrato());
		
	}

}
