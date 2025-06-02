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

SELECT 
    nome 'Cliente',
    cpf 'CPF',
    CASE sexo
        WHEN 'F' THEN 'Feminino'
        WHEN 'M' THEN 'Masculino'
        ELSE 'Outro'
    END 'Gênero',
    IFNULL(telefone, email) 'Contato',
    TIMESTAMPDIFF(YEAR, dataNasc, NOW()) 'Idade',
    CASE
        WHEN TIMESTAMPDIFF(YEAR, dataNasc, NOW()) BETWEEN 25 AND 35 THEN 'Cliente Alvo'
        WHEN sexo LIKE 'F' THEN 'Cliente Alvo'
        ELSE 'Cliente Não Alvo'
    END 'Campanha de Vendas para COVID'
FROM
    cliente
ORDER BY nome;

SELECT 
    nome 'Cliente',
    cpf 'CPF',
    CASE sexo
        WHEN 'F' THEN 'Feminino'
        WHEN 'M' THEN 'Masculino'
        ELSE 'Outro'
    END 'Gênero',
    IFNULL(telefone, email) 'Contato',
    TIMESTAMPDIFF(YEAR, dataNasc, NOW()) 'Idade',
    CASE
        WHEN (sexo LIKE 'F') AND 
			(TIMESTAMPDIFF(YEAR, dataNasc, NOW()) BETWEEN 25 AND 35)
				THEN 'Cliente Alvo'
        ELSE 'Cliente Não Alvo'
    END 'Campanha de Vendas para COVID'
FROM
    cliente
ORDER BY nome;

SELECT 
    srv.nome 'Serviço',
    CONCAT('R$ ', FORMAT(srv.valor, 2, 'pt_BR')) 'Valor',
    CASE
        WHEN COUNT(ivs.Servico_idServico) > 0 THEN 'SIM'
        ELSE 'NÃO'
    END 'Já vendeu?'
FROM
    servico srv
        LEFT JOIN
    itensvendaservico ivs ON srv.idServico = ivs.Servico_idServico
GROUP BY srv.idServico
ORDER BY srv.nome;

SELECT 
    srv.nome 'Serviço',
    CONCAT('R$ ', FORMAT(srv.valor, 2, 'pt_BR')) 'Valor',
    CASE
        WHEN COUNT(ivs.Servico_idServico) > 0 THEN 'SIM'
        ELSE 'NÃO'
    END 'Já vendeu?'
FROM
    servico srv
        LEFT JOIN
    itensvendaservico ivs ON srv.idServico = ivs.Servico_idServico
GROUP BY srv.idServico
ORDER BY srv.nome;

SELECT 
    prd.nome 'Serviço',
    CONCAT('R$ ', FORMAT(prd.valor, 2, 'pt_BR')) 'Valor',
    CASE
        WHEN COUNT(ivp.Produto_idProduto) > 0 THEN 'SIM'
        ELSE 'NÃO'
    END 'Já vendeu?',
    COUNT(ivp.Produto_idProduto) 'Quantidade de Praticipação em Vendas'
FROM
    produto prd
        LEFT JOIN
    itensvendaprod ivp ON ivp.Produto_idProduto = prd.idProduto
GROUP BY prd.idProduto
ORDER BY prd.nome;

SELECT 
    upper(prd.nome) 'Serviço',
    CONCAT('R$ ', FORMAT(prd.valor, 2, 'pt_BR')) 'Valor',
    CASE
        WHEN COUNT(ivp.Produto_idProduto) > 0 THEN 'SIM'
        ELSE 'NÃO'
    END 'Já vendeu?',
    COUNT(ivp.Produto_idProduto) 'Quantidade de Praticipação em Vendas'
FROM
    produto prd
        LEFT JOIN
    itensvendaprod ivp ON ivp.Produto_idProduto = prd.idProduto    
GROUP BY prd.idProduto
HAVING COUNT(ivp.Produto_idProduto) > 3
ORDER BY prd.nome;

select substr(dataVenda, 1,4) "Ano",
	count(idVenda) "Quantidade de Vendas",
    sum(valorTotal) "Faturamento"
	from venda
		group by substr(dataVenda, 1,4);

select date_format(dataVenda, '%Y') "Ano", 
	count(idVenda) "Quantidade de Vendas",
    sum(valorTotal) "Faturamento"
		from venda
			group by date_format(dataVenda, '%Y')
				order by 3 desc; 

SET SQL_SAFE_UPDATES = 0;

update itensvendaprod 
	set quantidade = 2
		where descontoProd > 0;

update itensvendaprod 
	set quantidade = 3
		where valorDeVenda < 6;

-- Produto, Frequencia de Venda, Qunatidade Vendida, Faturamento(tirar o desc)
select prd.nome "Produto",
	count(ivp.Venda_idVenda) "Frequencia de Venda",
    sum(ivp.quantidade) "Quantidade Vendida",
    concat("R$ ", format(sum((ivp.valorDeVenda * ivp.quantidade) - ifnull(ivp.descontoProd, 0)) , 2, 'pt_BR')) "Faturamento"
	from itensvendaprod ivp
    inner join produto prd on prd.idProduto = ivp.Produto_idProduto
		group by ivp.Produto_idProduto
			order by sum((ivp.valorDeVenda * ivp.quantidade) - ifnull(ivp.descontoProd, 0)) desc; 

delimiter $$
create function valeTransporte(pCPF varchar(14)) 
	returns decimal(5,2) deterministic
    begin
		declare valeTransp decimal(5,2) default 0.0;
        declare auxSal decimal(7,2);
        declare auxCid varchar(60);
        select salario into auxSal from funcionario where cpf like pCPF;
        select cidade into auxCid from enderecofunc where Funcionario_cpf like pCPF;
        if auxCid like "Recife"
			then set valeTransp = 22 * 2 * 4.3;
		else set valeTransp = 22 * 2 * 5.1;
        end if;
        set valeTransp = valeTransp - 0.06 * auxSal;
        if valeTransp > 0 
			then return valeTransp;
            else return 0.0;
		end if;
    end $$
delimiter ;

delimiter $$
create function calcAuxSaude(pCPF varchar(14))
	returns decimal(5,2) deterministic
    begin
		declare auxSaude decimal(5,2) default 150.0;
        declare idade int;
        select timestampdiff(year, dataNasc, now()) into idade
			from funcionario where cpf = pCPF;
        set auxSaude = (round(idade/10) - 2) * 50 + 150;
        return auxSaude;        
	end $$
delimiter ;

delimiter $$
create function calcINSS(pSalario decimal(7,2))
	returns decimal(6,2) deterministic
    begin
		declare inss decimal(6,2);
        if pSalario <= 1518 
			then set inss = pSalario * 0.075;
		elseif pSalario > 1518 and pSalario <= 2793.88
			then set inss = pSalario * 0.09;
		elseif pSalario between 2793.89 and 4190.83
			then set inss = pSalario * 0.12;
		elseif pSalario between 4190.84 and 8157.41
			then set inss = pSalario * 0.14;
		else set inss = 8157.41 * 0.14; 
        end if;
        return inss;
	end $$
delimiter ;

delimiter $$
create function calcIRRF(pSalario decimal(7,2))
	returns decimal(7,2) deterministic
    begin
		declare irrf decimal(7,2);
        if pSalario <= 2259.20 
			then set irrf = 0;
		elseif pSalario > 2259.20 and pSalario <= 2826.65
			then set irrf = pSalario * 0.075;
		elseif pSalario > 2826.65 and pSalario <= 3751.05
			then set irrf = pSalario * 0.15;
		elseif pSalario > 3751.05 and pSalario <= 4664.68
			then set irrf = pSalario * 0.225;
		else set irrf = pSalario * 0.275; 
        end if;
        return irrf;
	end $$
delimiter ;

select f.cpf "CPF", upper(f.nome) as "Funcionário", 
	concat(f.ch, ' horas') "Carga-horária", 
	concat("R$ ", format(f.salario, 2, 'de_DE')) "Salário", 
	concat("R$ ", format(f.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(count(d.cpf) * 280, 2, 'de_DE')) "Auxílio Creche",
    concat("R$ ", format(valeTransporte(f.cpf), 2, 'de_DE')) "Vale Transporte",
	concat("R$ ", format(calcAuxSaude(f.cpf), 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(22*18, 2, 'de_DE')) "Vale Alimentação",
    concat("-R$ ", format(calcINSS(f.salario), 2, 'de_DE')) "INSS",
    concat("-R$ ", format(calcIRRF(f.salario), 2, 'de_DE')) "IRRF",
    concat("R$ ", format(f.salario + f.comissao + count(d.cpf) * 280 
		+ valeTransporte(f.cpf) + calcAuxSaude(f.cpf) + 
        22*18 - calcINSS(f.salario) - calcIRRF(f.salario), 2, 'de_DE')) 
        "Salário Líquido"
		from funcionario f
			left join depauxcreche d on d.Funcionario_cpf = f.cpf
				group by f.cpf
					order by f.nome;   

delimiter $$
create procedure cadFunc(pcpf varchar(14),
			pnome varchar(60) ,
			pnomeSocial varchar(45) ,
			pemail varchar(45) ,
			psexo char(1) ,
			pestadoCivil varchar(15) ,
			pdataNasc date ,
			pch int ,
			psalario decimal(7,2),
			pcomissao decimal(6,2) ,
			pdataAdm datetime ,
			pdataDem datetime ,
			pfg decimal(6,2),
            pNumTel1 varchar(15),
            pNumTel2 varchar(15),
            pNumTel3 varchar(15),
            puf char(2) ,
			pcidade varchar(60) ,
			pbairro varchar(60) ,
			prua varchar(70) ,
			pnumero int ,
			pcomp varchar(45) ,
			pcep varchar(9))
	begin
		insert into funcionario
			value (pcpf, pnome, pnomesocial, pemail, psexo, pestadocivil, pdatanasc,
            pch, psalario, pcomissao, pdataAdm, pdataDem, pfg);
		insert into telefone (numero, funcionario_cpf)
			value (pNumTel1, pcpf);
		if pNumTel2 is not null 
			then insert into telefone (numero, funcionario_cpf)
					value (pNumTel2, pcpf);
		end if;
		if pNumTel3 is not null 
			then insert into telefone (numero, funcionario_cpf)
					value (pNumTel3, pcpf);
		end if;
		insert into enderecofunc
			value (pcpf, puf, pcidade, pbairro, prua, pnumero, pcomp, pcep);
    end $$ 
delimiter ;

call cadFunc("707.700.007-77", "Gislany Araújo", "Gi", "gislany.sa@gmail.com",
	'F', "Casada", '1998-09-30', 40, 3000, 420, '2020-05-26 08:00', null, 0.0,
    '(81)97447-9974', '(81)98448-9984', null, 'PE', "Recife", "Nova Descoberta",
    "Rua nova descoberta", 4389, null, '50090-197');

select * from funcionario;

select * from telefone;

select * from enderecofunc;

delimiter $$
create trigger trgAftInsertItensVndProduto after insert
	on itensvendaprod
		for each row
			begin
				update produto 
					set quantidade = quantidade - new.quantidade
						where idProduto = new.Produto_idProduto;
				update venda
					set valorTotal = valorTotal + (new.quantidade * new.valorDeVenda - new.descontoProd)
						where idVenda = new.Venda_idVenda;
			end $$
delimiter ;

insert into venda (datavenda, valortotal, desconto, Funcionario_cpf, Cliente_cpf)
	value('2025-06-02 12:06', 0.0, 0, "707.700.007-77", "319.874.206-58");

insert into itensvendaprod 
	values (264, 1, 5, 2, 0),
			(264, 2, 7, 1, 0),
            (264, 6, 9, 3, 9);


