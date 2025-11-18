package edu.senac.pe.SistemaBancarioSpring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.service.annotation.DeleteExchange;
import org.springframework.web.servlet.ModelAndView;

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
	
	@GetMapping("/listarClientes")
	public ModelAndView listarClientes() {
		ModelAndView mv = new ModelAndView("cliente/listarClientes");
		Iterable<Cliente> clientes = cr.findAll();
		mv.addObject("clientes", clientes);
		return mv;
	}
	
	@GetMapping("/excluirCliente/{cpf}")
	public String deletarCliente(@PathVariable String cpf) {
		System.out.println(cpf);
		cr.deleteById(cpf);
		return "cliente/listarClientes";
	}
	
}
