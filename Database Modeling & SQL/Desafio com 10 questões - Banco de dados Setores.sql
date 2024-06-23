/* DESAFIO EM BANCO DE DADOS COM 10 QUESTÕES! */

/* 1) Escreva um código SQL que cria duas tabelas abaixo:

tbl_pessoas:

ID_PESSOA: 1, 2, 3, 4 e 5.
NOME_PESSOA: Gabriel Moura, Guilherme Faria, Kelly Silva, Andrea Paiva, Ariele Santos.
NASC_PESSOA: 2000-08-15, 1986-12-19, 1977-01-30, 1980-09-07, 2003-03-03.
DEPTO_PESSOA: 1, 3, 5, 4 e 2.

tbl_deptos:

ID_DEPTO: 1, 2, 3, 4 e 5.
NOME_DEPTO: Produtos, T.I., Inovação, R.H., Operações.
GESTOR_DEPTO: Matheus Melo, Adriana Carvalho, Isaac Ferreira, Michaela Vicare, Denise Senise.

 */

CREATE DATABASE setores;

USE setores;

CREATE TABLE tbl_pessoas(
id_pessoa INT AUTO_INCREMENT PRIMARY KEY,
nome_pessoa VARCHAR (60),
nasc_pessoa DATE,
depto_pessoa INT
);

CREATE TABLE tbl_deptos(
id_depto INT AUTO_INCREMENT PRIMARY KEY,
nome_depto VARCHAR (60),
gestor_depto VARCHAR (60)
);

/* 2) Utilizando o campo depto_pessoa, crie a CONSTRAINT e FOREIGN KEY. */

ALTER TABLE tbl_pessoas ADD CONSTRAINT FOREIGN KEY (depto_pessoa) REFERENCES tbl_deptos (id_depto);

/* 3) Realize 5 INSERTS presentes em cada uma das tabelas. Atente-se à ordem de inserção de dados. */

INSERT INTO tbl_deptos (nome_depto, gestor_depto) VALUES ('Produtos', 'Matheus Melo'),
('T.I.', 'Adriana Carvalho'),
('Inovação', 'Isaac Ferreira'),
('R.H.', 'Michaela Vicare'),
('Operações', 'Denise Senise');

INSERT INTO tbl_pessoas (nome_pessoa, nasc_pessoa, depto_pessoa) VALUES ('Gabriel Moura', '2000-08-15', 1),
('Guilherme Faria', '1986-12-19', 3),
('Kelly Silva', '1977-01-30', 5),
('Andrea Paiva', '1980-09-07', 4),
('Ariele Santos', '2003-03-03', 2);

/* 4) Altere o registro do gestor Isaac Ferreira, de modo que o nome dele fique "Isaac Santos". */

SELECT * FROM tbl_deptos;

UPDATE tbl_deptos SET gestor_depto = 'Isaac Santos' WHERE id_depto = 3;

/* 5) Utilizando o comando SELECT com um INNER JOIN considerando o campo foreign key, escreva o comando que trará extamenete o resultado abaixo [Imagem do SELECT com os dados]. Atenção: Os dados devem ser os mesmos,
e a ordem de exibição deve ser idêntica a imagem. */

SELECT tbl_pessoas.nome_pessoa, tbl_deptos.nome_depto, tbl_pessoas.nasc_pessoa, tbl_deptos.gestor_depto FROM tbl_pessoas INNER JOIN tbl_deptos 
ON tbl_pessoas.depto_pessoa = tbl_deptos.id_depto ORDER BY tbl_deptos.nome_depto ASC;

/* 6) Utilizando o SELECT com LIKE, AND E OR e os campos descritos a seguir, traga o nome do GESTOR e todos os campos da tabela PESSOAS (ao todo serão 5 colunas) quando
o nome da pessoa não tiver a letra N e o nome não tiver a letra C, porém se o departamento da pessoa for 2 ela também deve ser exibida.
 */
 
 SELECT tbl_deptos.gestor_depto, tbl_pessoas.id_pessoa, tbl_pessoas.nome_pessoa, tbl_pessoas.nasc_pessoa, tbl_pessoas.depto_pessoa FROM tbl_deptos INNER JOIN tbl_pessoas 
 ON tbl_pessoas.depto_pessoa = tbl_deptos.id_depto WHERE tbl_pessoas.nome_pessoa NOT LIKE '%N%' AND tbl_deptos.gestor_depto NOT LIKE '%C%' OR tbl_pessoas.depto_pessoa LIKE '%2%';
 
 /* 7) Altere o nome da coluna nome_depto para Departamento */
 
 ALTER TABLE tbl_deptos CHANGE nome_depto departamento VARCHAR (60);
 
 /* 8) Altere o tipo de dados do campo gestor_depto para um VARCHAR (367). */
 
 ALTER TABLE tbl_deptos CHANGE gestor_depto gestor_depto VARCHAR (367);
 
 /* 9) Escreva o comando que Excluiria o departamento de INOVAÇÃO. Atenção: Se você fez o item 2 corretamente, o sistema retornará o código de erro informando que a
 CONSTRAINT não permite a exclusão.
 */
 
 SELECT * FROM tbl_deptos;
 
 DELETE FROM tbl_deptos WHERE id_depto = 3; /* ERROR CODE: 1451.*/
 
 /* 10) Altere o nome da gestora Michaela Vicare para Mikaela Souza. */
 
 SELECT * FROM tbl_deptos;
 
 UPDATE tbl_deptos SET gestor_depto = 'Mikaela Souza' WHERE id_depto = 4;
