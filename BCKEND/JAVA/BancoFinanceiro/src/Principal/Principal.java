package Principal;

import java.util.Date;

import Model.Cliente;
import Model.Endereco;

public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Olá mundo!");
		
		Endereco endGi = new Endereco("PE", "Recife", "Casa Amarela",
				"Professor Alexandre Borges", 123, null, "50070-790");
		
		Cliente gislany = new Cliente("Gislany Araújo", "123.456.789-00",
				new Date(1998, 8, 30), 4321245, "gi.araujo@gmail.com", 
				"81978877887", endGi);
		
		//endGi.bairro = "Afogados"; // Errado
		//endGi.setBairro("Afogados"); // Certo
		
		
		System.out.println(endGi);
		
		System.out.println(gislany);
	}

}
