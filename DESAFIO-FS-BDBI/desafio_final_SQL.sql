CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livro(
	codigo INT, 
    titulo VARCHAR(100) NOT NULL,
    editora VARCHAR(20),
    ano_publicacao INT,
    
    PRIMARY KEY(codigo)
);

CREATE TABLE cliente(
	nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14),
    telefone VARCHAR(12),
    
    PRIMARY KEY(cpf)
);

CREATE TABLE funcionario(
	matricula VARCHAR(14),
    funcao VARCHAR(20),
    salario FLOAT,
    
    PRIMARY KEY(matricula)
);

ALTER TABLE funcionario ADD COLUMN tipo_contratacao VARCHAR(20);

INSERT INTO
livro(codigo, titulo, editora, ano_publicacao)
VALUES(1, 'Introdução a Sistemas de Bancos de Dados', 'Campus', 2021),
(2, 'Projeto de Bancos de Dados', 'Bookman', 2022),
(3, 'SQL e Teoria Relacional', 'Novatec', 2020),
(4, 'Sistemas de Bancos de Dados', 'Pearson', 2021);

INSERT INTO
cliente(nome, cpf, telefone)
VALUES('Daniela Barreto', '083.555.666-98', '8398669-9742'),
('Maria Almeida', '073.410.896-87', '8398844-2500'),
('Arthur Azevedo', '072.003.251-77', '8399988-0124'),
('Joaquim Rodrigues', '088.074.063-54', '8399756-2496');

INSERT INTO
funcionario(matricula, funcao, salario, tipo_contratacao)
VALUES('25985507', 'bibliotecario(a)', 4000.00, 'CLT'),
('25985508', 'recepcionista', 1320.00, 'CLT'),
('25985509', 'servicos gerais', 1320.00, 'CLT'),
('25985510', 'administrador', 4000.00, 'CLT');

SELECT * FROM livro;
SELECT * FROM cliente;
SELECT * FROM funcionario;





