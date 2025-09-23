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
		
		Endereco endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro",
				"Rua Suassuna", 1235, null, "50070-750");
		//endGi.bairro = "Afogados"; // Errado
		//endGi.setBairro("Afogados"); // Certo				
		//System.out.println(endGi);
		
		Cliente gislany = new Cliente("Gislany Araújo", "123.456.789-00",
				new Date(1998, 8, 30), 4321245, "gi.araujo@gmail.com", 
				"81978877887", endGi);
		//System.out.println(gislany);
		Agencia agSuassuna = new Agencia("Ag Suassuna", 1235, "8121234556",
				"agsuassuna@banco.senac.br", endAgSuassuna);
		
		//System.out.println(agSuassuna);
		
		Conta contaGi = new Conta(gislany, 123456, agSuassuna);
		
		contaGi.depositar(1000);
		contaGi.sacar(500);
		contaGi.sacar(600);
		
		System.out.println("Extrato da conta de " + contaGi.getCliente().getNome() +
				": \n" + contaGi.getTransacoes().toString());
		
		System.out.println("Saldo da conta de " + contaGi.getCliente().getNome() +
				": R$ " + contaGi.getSaldo());
		
	}

}
