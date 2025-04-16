-- SQL: DQL - SELECT

select * from funcionario;

select cpf, nome, sexo, estadoCivil, dataNasc, 
	email, ch, salario, comissao, dataAdm
		from funcionario;

select cpf "CPF", nome as "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", dataNasc "Data de Nascimento", 
	email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data Admissão"
		from funcionario;

select cpf "CPF", nome as "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", dataNasc "Data de Nascimento", 
	email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data Admissão"
		from funcionario
			order by nome;

select cpf "CPF", nome as "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", dataNasc "Data de Nascimento", 
	email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data Admissão"
		from funcionario
			order by salario desc;
            
select cpf "CPF", nome as "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", dataNasc "Data de Nascimento", 
	email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data Admissão"
		from funcionario
			order by sexo, salario desc;

-- https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html#function_date-format
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_replace
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_concat
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_upper
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_format
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where dataAdm < '2020-03-11'
				order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where dataAdm >= '2020-03-11'
				order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
				order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where timestampdiff(year, dataNasc, now()) >= 35
				and timestampdiff(year, dataNasc, now()) < 45
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where timestampdiff(year, dataNasc, now()) between 35 and 44
				order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where salario between 2000 and 3000
				order by nome;
-- ERRO                
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where (salario + comissao) >= avg(salario + comissao)
				order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where (salario) >= avg(salario)
				group by (salario)
					order by nome;
                    
select avg(salario) from funcionario;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where salario >= (select avg(salario) from funcionario)
					order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where (salario + comissao) >= (select avg(salario + comissao) from funcionario)
					order by nome;
                    
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento",
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where (salario + comissao) < (select avg(salario + comissao) from funcionario)
					order by nome;
                    
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão"
		from funcionario
			where cpf in (SELECT funcionario_cpf 
							FROM farmarciatads039m.enderecofunc 
								where cidade = "Olinda")
			order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão",
    cidade "Cidade",
    bairro "Bairro"
		from funcionario, enderecofunc
			order by nome;
            
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão",
    cidade "Cidade",
    bairro "Bairro"
		from funcionario, enderecofunc
			where cpf = Funcionario_cpf
				order by nome;            
            
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão",
    cidade "Cidade",
    bairro "Bairro"
		from funcionario
			inner join enderecofunc on Funcionario_cpf = cpf
				order by nome;                 
            
            
select cpf "CPF", upper(nome) as "Funcionário", 
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	email "E-mail", 
    concat(ch, ' horas') "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%d/%m/%Y - %H:%i') "Data Admissão",
    cidade "Cidade",
    bairro "Bairro"
		from funcionario
			inner join enderecofunc on Funcionario_cpf = cpf
				where cidade like "olinda"
				order by nome;             
            
select d.cpf "CPF do Dependente",
	d.nome "Dependente", d.parentesco "Parentesco",
    timestampdiff(year, d.dataNasc, now()) "Idade",
    f.cpf "CPF do Responsável",
    f.nome "Responsável"
	from dependente d
		inner join funcionario f on f.cpf = d.funcionario_cpf;
    
            
            
            