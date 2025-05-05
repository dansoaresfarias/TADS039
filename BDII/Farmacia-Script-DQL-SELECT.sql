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

create view vRelFuncionarios as
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
            
select * from vrelfuncionarios;

select * from vrelfuncionarios
	where Cidade like "Olinda";
    
select cli.cpf "CPF", upper(cli.nome) "Cliente", 
	replace(replace(cli.sexo, 'F', "Feminino"),'M', "Masculino") "Gênero",
	cli.email "Email", cli.telefone "Telefone",
    date_format(cli.dataNasc, '%d/%m/%Y') "Data de Nascimento",
    cli.pontuacao "Pontuação", 
    ps.numero "Número do Plano de Saúde", 
    ps.nome "Plano de Saúde",
    endcli.cidade "Cidade", endcli.bairro "Bairro"
	from cliente cli
		left join planosaude ps 
					on ps.Cliente_cpf = cli.cpf
        left join enderecocli endcli 
					on endcli.Cliente_cpf = cli.cpf
			order by cli.nome;

create view vRelClientes as
	select cli.cpf "CPF", upper(cli.nome) "Cliente", 
		replace(replace(cli.sexo, 'F', "Feminino"),'M', "Masculino") "Gênero",
		cli.email "Email", cli.telefone "Telefone",
		date_format(cli.dataNasc, '%d/%m/%Y') "Data de Nascimento",
		cli.pontuacao "Pontuação", 
		ps.numero "Número do Plano de Saúde", 
		ps.nome "Plano de Saúde",
		endcli.cidade "Cidade", endcli.bairro "Bairro"
		from cliente cli
			left join planosaude ps 
						on ps.Cliente_cpf = cli.cpf
			left join enderecocli endcli 
						on endcli.Cliente_cpf = cli.cpf
				order by cli.nome;

select * from vrelclientes
	where Cidade like "Olinda";


select f.cpf "CPF", upper(f.nome) as "Funcionário", 
		concat(f.ch, ' horas') "Carga-horária", 
		concat("R$ ", format(f.salario, 2, 'de_DE')) "Salário", 
		concat("R$ ", format(f.comissao, 2, 'de_DE')) "Comissão",
        count(d.cpf) "Quantidade de Filhos"
			from funcionario f
				left join dependente d on d.Funcionario_cpf = f.cpf
					group by f.cpf
						order by f.nome;

select f.cpf "CPF", upper(f.nome) as "Funcionário", 
		concat(f.ch, ' horas') "Carga-horária", 
		concat("R$ ", format(f.salario, 2, 'de_DE')) "Salário", 
		concat("R$ ", format(f.comissao, 2, 'de_DE')) "Comissão",
        concat("R$ ", format(count(d.cpf) * 280, 2, 'de_DE')) "Auxílio Creche"
			from funcionario f
				left join dependente d on d.Funcionario_cpf = f.cpf
					group by f.cpf
						order by f.nome;

select f.cpf "CPF", upper(f.nome) as "Funcionário", 
		concat(f.ch, ' horas') "Carga-horária", 
		concat("R$ ", format(f.salario, 2, 'de_DE')) "Salário", 
		concat("R$ ", format(f.comissao, 2, 'de_DE')) "Comissão",
        count(d.cpf) "Quantidade de Filhos",
        concat("R$ ", format(count(d.cpf) * 280, 2, 'de_DE')) "Auxílio Creche"
			from funcionario f
				left join dependente d on d.Funcionario_cpf = f.cpf
					where timestampdiff(year, d.dataNasc, now()) <= 5
						group by f.cpf
							order by f.nome;
                        
SELECT cpf, nome, 
	timestampdiff(year, dataNasc, now()) "idade",
	Funcionario_cpf
	FROM farmarciatads039m.dependente
		where timestampdiff(year, dataNasc, now()) <= 5;
        
create view depAuxCreche as
	 SELECT cpf, nome, 
		timestampdiff(year, dataNasc, now()) "idade",
		Funcionario_cpf
		FROM farmarciatads039m.dependente
			where timestampdiff(year, dataNasc, now()) <= 5;
        
select f.cpf "CPF", upper(f.nome) as "Funcionário", 
		concat(f.ch, ' horas') "Carga-horária", 
		concat("R$ ", format(f.salario, 2, 'de_DE')) "Salário", 
		concat("R$ ", format(f.comissao, 2, 'de_DE')) "Comissão",
        concat("R$ ", format(count(d.cpf) * 280, 2, 'de_DE')) "Auxílio Creche"
			from funcionario f
				left join depauxcreche d on d.Funcionario_cpf = f.cpf
					group by f.cpf
						order by f.nome;   
                        
select f.cpf "CPF Funcionário",
	f.nome "Funcionário",
	count(v.idVenda) "Quantidade de Venda",
    concat("R$ ", format(sum(v.valorTotal), 2, 'de_DE')) "Faturamento"
    from funcionario f
		left join venda v on v.Funcionario_cpf = f.cpf
			group by f.cpf
				order by count(v.idVenda) desc;

select f.cpf "CPF Funcionário",
	f.nome "Funcionário",
	count(v.idVenda) "Quantidade de Venda",
    concat("R$ ", format(sum(v.valorTotal), 2, 'de_DE')) "Faturamento"
    from funcionario f
		left join venda v on v.Funcionario_cpf = f.cpf
			group by f.cpf
				order by sum(v.valorTotal) desc;


select substr(dataVenda, 5) 
	from venda;

select date_format(dataVenda, '%m/%Y')
	from venda;
    
-- Resolver próxima aula
select date_format(dataVenda, '%m/%Y') "Mês/Ano", 
	count(idVenda) "Quantidade de Vendas",
    sum(valorTotal) "Faturamento"
		from venda
			group by date_format(dataVenda, '%m/%Y'); 
            
-- CPF, Funcionario, Ch, Salario, Comissao, Cargo, Departamento
select func.cpf "CPF", func.nome "Funcionario",
	concat(func.ch, " horas") "Carga-Horária",
    concat("R$ ", format(func.salario, 2, 'pt_BR')) "Salário",
    concat("R$ ", format(func.comissao, 2, 'pt_BR')) "Comissão",
    crg.nome "Cargo",
    dep.nome "Departamento"
	from trabalhar trb
		inner join funcionario func on func.cpf =  trb.Funcionario_cpf
        inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
        inner join cargo crg on crg.cbo = trb.Cargo_cbo
			order by func.nome;
            
select func.cpf "CPF", func.nome "Funcionario",
	concat(func.ch, " horas") "Carga-Horária",
    ifnull(group_concat(tel.numero separator " | "), func.email) "Contato",
    concat("R$ ", format(func.salario, 2, 'pt_BR')) "Salário",
    concat("R$ ", format(func.comissao, 2, 'pt_BR')) "Comissão",
	upper(crg.nome) "Cargo",
    group_concat(distinct dep.nome separator " | ") "Departamento"
	from trabalhar trb
		inner join funcionario func on func.cpf =  trb.Funcionario_cpf
        inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
        inner join cargo crg on crg.cbo = trb.Cargo_cbo
        left join telefone tel on tel.Funcionario_cpf = func.cpf
			group by func.cpf, crg.cbo
				order by func.nome;

select upper(crg.nome) "Cargo",
	group_concat(distinct func.nome separator " | ") "Funcionarios"
    from trabalhar trb
		inner join funcionario func on func.cpf = trb.Funcionario_cpf
        inner join cargo crg on crg.cbo = trb.Cargo_cbo
			group by crg.cbo
				order by crg.nome;



