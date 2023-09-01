CREATE DATABASE universidade;
USE universidade;

CREATE TABLE aluno(
	matricula VARCHAR(14),
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(30) NOT NULL,
    idade INT,
    
    PRIMARY KEY(matricula)
);

CREATE TABLE curso(
	nome VARCHAR(200) NOT NULL,
    id INT,
    preco FLOAT,
    departamento VARCHAR(20) NOT NULL,
    
    PRIMARY KEY(id)
);

CREATE TABLE professor(
	cpf VARCHAR(200),
    formacao VARCHAR(20) NOT NULL,
    salario FLOAT NOT NULL,
    
    PRIMARY KEY(cpf)
);

ALTER TABLE aluno ADD COLUMN telefone VARCHAR(20);
ALTER TABLE curso ADD COLUMN turno CHAR;
ALTER TABLE professor ADD COLUMN idade INT;

SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM professor;

INSERT INTO
aluno(matricula, nome, email, idade, telefone)
VALUES('25980022', 'Daniela Barreto', 'danielabna@gmail.com', 32, '98670-7788'),
('25980023', 'João Silva', 'joaosl@gmail.com', 27, '99970-7528'),
('25980024', 'Ana Pontes', 'anapn@gmail.com', 23, '98980-9978');

INSERT INTO
curso(nome, id, preco, departamento, turno)
VALUES('administracao', 1, 800.00, 'ciencias sociais', 'M'),
('analise e desenvolvimento de sistemas', 2, 850.00, 'exatas', 'N'),
('ciencias da computacao', 3, 900.00, 'exatas', 'N');

INSERT INTO
professor(cpf, formacao, salario, idade)
VALUES('083.666.333-98', 'administracao', '5.000', 40),
('085.777.000-48', 'administracao', '5.000', 40),
('074.555.145-88', 'administracao', '5.000', 40);

UPDATE professor
SET salario = 5000.00
WHERE cpf IN ('083.666.333-98', '085.777.000-48', '074.555.145-88');

UPDATE professor
SET formacao = 'ads'
WHERE cpf = '085.777.000-48';

UPDATE professor
SET formacao = 'gti'
WHERE cpf = '074.555.145-88';

ALTER TABLE aluno DROP COLUMN telefone;
ALTER TABLE curso DROP COLUMN turno;
ALTER TABLE professor DROP COLUMN idade;

-- A questão 5 solicita mostrar o conteúdo de cada tabela. Já utilizei acima o SELECT (fico apenas rodando novamente para conferir as tabelas).

SELECT * FROM aluno
WHERE idade = 32;




