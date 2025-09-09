package Principal;

import Model.Endereco;

public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Olá mundo!");
		
		Endereco endGi = new Endereco("PE", "Recife", "Casa Amarela",
				"Professor Alexandre Borges", 123, null, "50070-790");
		
		System.out.println(endGi);
	}

}
