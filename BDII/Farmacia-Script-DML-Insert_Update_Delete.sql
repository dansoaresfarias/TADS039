-- SQL: DML - INSERT

insert into cliente (cpf, nome, dataNasc, sexo, email, telefone)
	value ("097.970.777-99", "Bianca Guimarães", '2000-08-08','F',
		"bia2000@gmail.com", "(81)99116-3617");
        
insert into cliente
	values ("706.760.607-00", "Marcos Tavares", 'M', 
    "marcosjoao@gmail.com", "(81)99521-2121", '1997-07-28', null),
    ("707.777.000-70", "Gislany Araújo", 'F', 
    "giunica@gmail.com", "(81)997400-7400", '1998-09-30', 40),
    ("754.457.555-44", "Marlio Ramos", 'M', 
    "marliochopp@gmail.com", "(81)98227-0101", '1969-04-21', 540);
            
INSERT INTO cliente VALUES
    ("111.111.111-11", "Carlos Souza", 'M', "carlos.souza@gmail.com", "(81)98111-1111", '1990-01-01', 500),
    ("222.222.222-22", "Mariana Lima", 'F', "mariana.lima@gmail.com", "(81)98222-2222", '1985-02-12', 1000),
    ("333.333.333-33", "Fernando Alves", 'M', "fernando.alves@gmail.com", "(81)98333-3333", '1995-03-23', 1500),
    ("444.444.444-44", "Juliana Castro", 'F', "juliana.castro@gmail.com", "(81)98444-4444", '1988-04-04', 700),
    ("555.555.555-55", "Rafael Martins", 'M', "rafael.martins@gmail.com", "(81)98555-5555", '1992-05-15', 1200),
    ("666.666.666-66", "Larissa Costa", 'F', "larissa.costa@gmail.com", "(81)98666-6666", '1997-06-26', 950),
    ("777.777.777-77", "Thiago Almeida", 'M', "thiago.almeida@gmail.com", "(81)98777-7777", '1991-07-07', 1800),
    ("888.888.888-88", "Beatriz Santos", 'F', "beatriz.santos@gmail.com", "(81)98888-8888", '1993-08-18', 650),
    ("999.999.999-99", "Lucas Mendes", 'M', "lucas.mendes@gmail.com", "(81)98999-9999", '1996-09-29', 1300),
    ("101.101.101-01", "Ana Paula Fernandes", 'F', "ana.paula@gmail.com", "(81)98101-0101", '1994-10-10', 1100),
    ("202.202.202-02", "Gabriel Oliveira", 'M', "gabriel.oliveira@gmail.com", "(81)98202-0202", '1998-11-21', 750),
    ("303.303.303-03", "Patrícia Mendes", 'F', "patricia.mendes@gmail.com", "(81)98303-0303", '1990-12-12', 850),
    ("404.404.404-04", "Eduardo Santana", 'M', "eduardo.santana@gmail.com", "(81)98404-0404", '1989-01-22', 950),
    ("505.505.505-05", "Fernanda Oliveira", 'F', "fernanda.oliveira@gmail.com", "(81)98505-0505", '1993-02-13', 1050),
    ("606.606.606-06", "João Victor Brayner", 'M', "joao.victor@gmail.com", "(81)98606-0606", '1997-03-24', 1150),
    ("707.707.707-07", "Tatiane Araújo", 'F', "tatiane.araujo@gmail.com", "(81)98707-0707", '1992-04-05', 1250),
    ("808.808.808-08", "Ricardo Lima", 'M', "ricardo.lima@gmail.com", "(81)98808-0808", '1995-05-16', 1350),
    ("909.909.909-09", "Camila Rocha", 'F', "camila.rocha@gmail.com", "(81)98909-0909", '1987-06-27', 1450),
    ("111.222.333-44", "Saulo Melo", 'M', "saulo.melo@gmail.com", "(81)98112-2333", '1991-07-08', 1550),
    ("555.666.777-88", "Sofia Ribeiro", 'F', "sofia.ribeiro@gmail.com", "(81)98556-6777", '1994-08-19', 1650);

insert into enderecocli 
	values ("706.760.607-00", 'PE', "Recife", "Várzea", 
		"Rua 1 de maio", 78, null, "50180-180"),
        ("097.970.777-99", 'PE', "Igarassu", "Cruz de Rebouças",
        "Rua Otávio Franscisco Ribeira", 45, "Casa A", "53510-100");

-- Inserir endereços para cada cliente
INSERT INTO EnderecoCli (Cliente_cpf, uf, cidade, bairro, rua, numero, comp, cep)
VALUES
    ("999.999.999-99", 'PE', 'Recife', 'Boa Viagem', 'Avenida Boa Viagem', 1500, 'Apto 302', '51030-000'),
    ("909.909.909-09", 'PE', 'Recife', 'Casa Forte', 'Rua Professor Andrade Bezerra', 150, NULL, '52061-060'),
    ("888.888.888-88", 'PE', 'Recife', 'Pina', 'Rua Antônio Lumack do Monte', 300, 'Casa B', '51110-020'),
    ("808.808.808-08", 'PE', 'Recife', 'Espinheiro', 'Rua do Espinheiro', 500, NULL, '52020-020'),
    ("777.777.777-77", 'PE', 'Recife', 'Graças', 'Rua das Graças', 200, 'Bloco C', '52011-000'),
    ("754.457.555-44", 'PE', 'Recife', 'Boa Vista', 'Rua da Aurora', 1000, NULL, '50050-090'),
    ("707.777.000-70", 'PE', 'Recife', 'Ilha do Leite', 'Rua do Sol', 200, 'Sala 301', '50070-070'),
    ("707.707.707-07", 'PE', 'Recife', 'Madalena', 'Rua Real da Torre', 400, NULL, '50710-000'),
    ("666.666.666-66", 'PE', 'Recife', 'Torre', 'Rua do Apolo', 300, 'Apto 101', '50030-220'),
    ("606.606.606-06", 'PE', 'Recife', 'Derby', 'Avenida Visconde de Suassuna', 500, NULL, '52010-040'),
    ("555.666.777-88", 'PE', 'Recife', 'Parnamirim', 'Rua Padre Carapuceiro', 700, 'Casa 2', '52060-000'),
    ("555.555.555-55", 'PE', 'Recife', 'Encruzilhada', 'Avenida Norte', 1500, NULL, '52041-000'),
    ("505.505.505-05", 'PE', 'Recife', 'Afogados', 'Rua da Alegria', 200, 'Apto 501', '50770-000'),
    ("444.444.444-44", 'PE', 'Recife', 'Cordeiro', 'Rua do Cordeiro', 100, NULL, '50711-000'),
    ("404.404.404-04", 'PE', 'Recife', 'Ipsep', 'Rua do Ipsep', 50, 'Bloco B', '51345-000'),
    ("333.333.333-33", 'PE', 'Recife', 'Caxangá', 'Avenida Caxangá', 2000, NULL, '50730-000'),
    ("303.303.303-03", 'PE', 'Recife', 'Jaqueira', 'Rua do Futuro', 300, 'Casa 5', '52050-000'),
    ("222.222.222-22", 'PE', 'Recife', 'Rosarinho', 'Rua do Rosarinho', 400, NULL, '52041-000'),
    ("202.202.202-02", 'PE', 'Recife', 'Arruda', 'Rua da Arruda', 600, 'Apto 201', '52110-000'),
    ("111.222.333-44", 'PE', 'Recife', 'Campo Grande', 'Rua do Campo Grande', 700, NULL, '52011-000'),
    ("111.111.111-11", 'PE', 'Recife', 'São José', 'Rua da Imperatriz', 800, 'Sala 10', '50030-220'),
    ("101.101.101-01", 'PE', 'Recife', 'Santo Antônio', 'Rua do Imperador', 900, NULL, '50010-240');


INSERT INTO PlanoSaude (Cliente_cpf, numero, nome)
VALUES
    ('999.999.999-99', 'AMIL78901234', 'Amil Saúde'),
    ('909.909.909-09', 'UNIM98765432', 'Unimed Recife'),
    ('888.888.888-88', 'BRAD45612378', 'Bradesco Saúde'),
    ('808.808.808-08', 'SULH65498712', 'SulAmérica Saúde'),
    ('777.777.777-77', 'HAPV32165498', 'Hapvida'),
    ('754.457.555-44', 'NOTR14725836', 'NotreDame Intermédica'),
    ('707.777.000-70', 'PREV74185296', 'Prevent Senior'),
    ('707.707.707-07', 'PORTS25836914', 'Porto Seguro Saúde'),
    ('706.760.607-00', 'AMIL36925814', 'Amil Saúde'),
    ('666.666.666-66', 'UNIM85214796', 'Unimed Nacional'),
    ('505.505.505-05', 'NOTR32165487', 'NotreDame Intermédica'),
    ('444.444.444-44', 'GOLD78945612', 'Golden Cross'),
    ('404.404.404-04', 'PREV45612378', 'Prevent Senior'),
    ('333.333.333-33', 'PORTS65498732', 'Porto Seguro Saúde'),
    ('303.303.303-03', 'AMIL98765432', 'Amil Saúde'),
    ('222.222.222-22', 'UNIM12345678', 'Unimed Recife'),
    ('202.202.202-02', 'BRAD45678912', 'Bradesco Saúde'),
    ('111.222.333-44', 'SULH78912345', 'SulAmérica Saúde'),
    ('111.111.111-11', 'HAPV12345678', 'Hapvida'),
    ('101.101.101-01', 'NOTR45678912', 'NotreDame Intermédica'),
    ('097.970.777-99', 'GOLD78912345', 'Golden Cross');

-- SQL: DML - UPDATE
update cliente
	set pontuacao = 100
		where cpf = "706.760.607-00";

update cliente
	set cpf = "097.970.777-00"
		where cpf = "097.970.777-99";

update cliente
	set pontuacao = pontuacao + 500
		where sexo = 'F';
        
update cliente
	set pontuacao = pontuacao + 1000
		where cpf in (SELECT cliente_cpf FROM planosaude);

-- SQL: DML - DELETE
delete from cliente
	where cpf = "097.970.777-00";

delete from cliente
	where cpf in 
		(select cliente_cpf from enderecocli 
			where bairro like "V%rzea");

delete from cliente;

-- SQL: DTL
start transaction;
delete from cliente
	where cpf in (select cliente_cpf from enderecocli 
			where cidade like "Recife");
commit;
rollback;
            
            
            
            
