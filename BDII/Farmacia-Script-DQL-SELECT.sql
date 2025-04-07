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



