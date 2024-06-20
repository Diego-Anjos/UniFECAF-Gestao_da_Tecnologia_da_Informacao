/* Banco de dados desenvolvido para armazenar informações detalhadas sobre gestores e seus respectivos departamentos, 
facilitando a organização e o gerenciamento eficiente da estrutura organizacional da empresa. */

CREATE DATABASE empresa; /* Criação do banco de dados. */

USE empresa; /* Ativar banco "Empresa". */

CREATE TABLE tbl_gestor( /*Criação da tabela Gestor. */
id_gestor INT AUTO_INCREMENT PRIMARY KEY,
nome_gestor VARCHAR (150),
departamento_gestor VARCHAR (150)
);

INSERT INTO tbl_gestor (nome_gestor, departamento_gestor) values ('Matheus Melo', 'TI'), /* Adição de dados na tabela Gestor. */
('Bruce Wayne', 'MKT'),
('Maria Santos', 'MKT'),
('Diogo Dias', 'RH'),
('Marília Dias', 'TI'),
('Diego Rocha', 'RH'),
('Adriana Carvalho', 'ADM'),
('Bruna Souza', 'RH');

SELECT * FROM tbl_gestor; /* Consulta todos os dados da tabela Gestor. */

/* Desafios */

/* 1) Exiba todos os gestores do TI ou que tenham a letra B no nome. */

SELECT * FROM tbl_gestor WHERE departamento_gestor LIKE '%TI' OR nome_gestor LIKE '%B%';

/* 2) Exiba todos os gestores do MKT ou que o id seja = 1; */

SELECT * FROM tbl_gestor WHERE departamento_gestor LIKE '%MKT%' OR id_gestor = '1';

/* 3) Exiba todos os gestores com a letra A no nome e que o departamento não seja TI. */

SELECT * FROM tbl_gestor WHERE nome_gestor LIKE '%A%' AND departamento_gestor <> 'TI';
