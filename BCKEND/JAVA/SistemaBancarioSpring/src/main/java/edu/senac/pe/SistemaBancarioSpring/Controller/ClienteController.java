package edu.senac.pe.SistemaBancarioSpring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.senac.pe.SistemaBancarioSpring.Model.Cliente;

@Controller
public class ClienteController {

	@GetMapping("/cadastrarCliente")
	public String cadastrarCliente() {
		return "cliente/formCliente";
	}
	
	@PostMapping("/cadastrarCliente")
	public String cadastrarCliente(Cliente cliente) {
		System.out.println(cliente);
		return "cliente/salvarCliente";
	}
	
}
