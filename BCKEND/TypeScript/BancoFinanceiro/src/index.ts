import { Agencia } from "./Model/Agencia";
import { Cliente } from "./Model/Cliente";
import { Conta } from "./Model/Conta";
import { Endereco } from "./Model/Endereco";

console.log("Banco Financeiro - Projeto de Ensino");

const endGi = new Endereco("PE", "Recife", "Casa Amarela", 
    "Professor Alexandre Borges", 123, "50070-790");
const endJosue = new Endereco("PE", "Olinda", "Águas Compridas", 
    "Rua Molhada", 321, "50700-780");

//console.log(endGi.toString());

const endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro", 
    "Rua Suassuna", 1235, "50070-750");

const agSuassuna = new Agencia("Agência Suassuna", 1235, "8121254534", 
    "agsuassuna@banco.senac.br" , endAgSuassuna);

//console.log(agSuassuna.toString());

const gislany = new Cliente("Gislany Araújo", "123.456.789-00", 
    new Date("1998-09-30"), 1234567, "gi.arujo@gmail.com", 81999999999, endGi);
const josue = new Cliente("Josué Silva", "987.654.321-00", 
    new Date("1995-05-15"), 7654321, "josue.silva@gmail.com", 81988888888, endJosue);

//console.log(gislany.toString());

const contaGi = new Conta(gislany, 123456, agSuassuna);
const contaJosue = new Conta(josue, 654321, agSuassuna);

contaGi.depositar(4500);
contaGi.sacar(500);
contaGi.pagar(1400, "Aluguel do Mês");
contaGi.pagar(2000, "Cartão de Crédito");
contaGi.pagar(80, "Energia Elétrica");
contaGi.pagar(50, "Internet GatoNET");
contaGi.pagar(80, "Academia de Musculação");

contaJosue.depositar(3500);
contaJosue.pagar(700, "Aluguel do Mês");
contaJosue.pagar(1100, "Cartão de Crédito");
contaJosue.pagar(50, "Energia Elétrica");
contaJosue.pagar(100, "Internet GatoNET");
contaJosue.pagar(120, "Academia de Musculação");
contaJosue.transferir(100, contaGi);

console.log(contaGi.imprimirExtrato());
console.log(contaJosue.imprimirExtrato());