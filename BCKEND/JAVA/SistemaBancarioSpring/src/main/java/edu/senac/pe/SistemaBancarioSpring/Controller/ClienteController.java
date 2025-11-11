package edu.senac.pe.SistemaBancarioSpring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.senac.pe.SistemaBancarioSpring.Model.Cliente;
import edu.senac.pe.SistemaBancarioSpring.Repository.ClienteRepository;

@Controller
public class ClienteController {
	
	@Autowired
	ClienteRepository cr;

	@GetMapping("/cadastrarCliente")
	public String cadastrarCliente() {
		return "cliente/formCliente";
	}
	
	@PostMapping("/cadastrarCliente")
	public String cadastrarCliente(Cliente cliente) {
		System.out.println(cliente);
		cr.save(cliente);
		return "cliente/salvarCliente";
	}
	
}
