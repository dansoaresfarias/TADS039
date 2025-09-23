import { Agencia } from "./Model/Agencia";
import { Cliente } from "./Model/Cliente";
import { Conta } from "./Model/Conta";
import { Endereco } from "./Model/Endereco";

console.log("Banco Financeiro - Projeto de Ensino");

const endGi = new Endereco("PE", "Recife", "Casa Amarela", 
    "Professor Alexandre Borges", 123, "50070-790");

//console.log(endGi.toString());

const endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro", 
    "Rua Suassuna", 1235, "50070-750");

const agSuassuna = new Agencia("Agência Suassuna", 1235, "8121254534", 
    "agsuassuna@banco.senac.br" , endAgSuassuna);

//console.log(agSuassuna.toString());

const gislany = new Cliente("Gislany Araújo", "123.456.789-00", 
    new Date("1998-09-30"), 1234567, "gi.arujo@gmail.com", 81999999999, endGi);

//console.log(gislany.toString());

const contaGi = new Conta(gislany, 123456, agSuassuna);

contaGi.depositar(1000);
contaGi.sacar(500);
contaGi.sacar(600);

console.log(`Extrato da conta de ${contaGi.getCliente().getNome()}: \n 
    ${contaGi.getTransacoes().map(t => t.toString()).join("\n")}`);

console.log(`Saldo atual: R$${contaGi.getSaldo().toFixed(2)}`);