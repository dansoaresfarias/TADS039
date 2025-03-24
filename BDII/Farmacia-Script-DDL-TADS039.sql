-- SQL: DDL - CREATE
create schema trabalhador;

use trabalhador;

CREATE TABLE Cliente (
    cpf VARCHAR(14) PRIMARY KEY NOT NULL,
    nome VARCHAR(45) NOT NULL,
    genero CHAR(1) NOT NULL,
    email VARCHAR(45) UNIQUE NULL,
    telefone VARCHAR(15) UNIQUE NOT NULL,
    dataNasc DATE NULL,
    `status` BOOLEAN NULL
);

CREATE TABLE Plano_Saude (
    Cliente_cpf VARCHAR(14) PRIMARY KEY NOT NULL,
    numero VARCHAR(20) UNIQUE NOT NULL,
    nome VARCHAR(25) NOT NULL,
    FOREIGN KEY (Cliente_cpf)
        REFERENCES cliente (cpf)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- SQL: DDL - ALTER
alter table departamento
	add column descricao varchar(150) null;

desc departamento;

alter table departamento
	change column descricao sobre varchar(155) not null;

alter table departamento
	drop column sobre;

alter table cliente
	add column potuacao int null default 0;
    
alter table cliente
	add column idade int not null after dataNasc,
    change column potuacao pontuacao int null default 0;

desc cliente;

alter table cliente
	drop column idade;