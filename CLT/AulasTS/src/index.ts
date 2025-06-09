import { Telefone } from './Model/Telefone';
import { Funcionario } from './Model/Funcionario';

//console.log("Hello World! Danilo Farias");

const danilo = new Funcionario(
    '12345678901',
    'Danilo Farias',
    'dansoaresfarias@gmail.com',
    'M',
    'Casado',
    new Date('1986-09-07'),
    40,
    3000,
    new Date('2021-02-01 08:00:00'));

const reide = new Funcionario(
    '98345678901',
    'Reideclildon Paulo Silva',
    'reideclildon@gmail.com',
    'M',
    'Solteiro',
    new Date('2002-04-12'),
    40,
    2000,
    new Date('2023-01-05'));

danilo.setNomeSocial('Dan');
danilo.adicionarNumTelefone("(81)999999-9999");
danilo.adicionarNumTelefone("(81)988888-8888");

reide.setNomeSocial('Reide');
reide.adicionarTelefone(new Telefone("(81)999999-9900"));
reide.adicionarTelefone(new Telefone("(81)988888-8800"));

console.log(danilo);
console.log(reide.toString());