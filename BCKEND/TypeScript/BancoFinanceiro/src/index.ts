import { Cliente } from "./Model/Cliente";
import { Endereco } from "./Model/Endereco";

console.log("Banco Financeiro - Projeto de Ensino");

const endGi = new Endereco("PE", "Recife", "Casa Amarela", 
    "Professor Alexandre Borges", 123, "50070-790");

const gislany = new Cliente("Gislany Araújo", "123.456.789-00", 
    new Date("1998-09-30"), 1234567, "gi.arujo@gmail.com", 81999999999, endGi);

console.log(endGi.toString());

console.log(gislany.toString());