/* Introdução à chaves estrangeiras + comando INNER JOIN. */

CREATE DATABASE curso; /*Cria um novo banco de dados chamado curso.*/

USE curso; /* Seleciona o banco de dados curso para ser utilizado. */

CREATE TABLE tbl_alunos ( /* Cria a tabela de Alunos. */
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR (150),
data_nasc_aluno DATE,
fk_curso INT);

CREATE TABLE tbl_cursos ( /* Cria a tabela de Cursos. */
id_curso INT AUTO_INCREMENT PRIMARY KEY,
nome_curso VARCHAR (150));

ALTER TABLE tbl_alunos ADD CONSTRAINT FOREIGN KEY (fk_curso)
REFERENCES tbl_cursos (id_curso); /* Adiciona uma restrição de chave estrangeira à tabela tbl_alunos.
A restrição FOREIGN KEY assegura que o valor na coluna fk_curso em tbl_alunos deve existir na coluna id_curso da tabela tbl_cursos. 
Garantindo que cada valor de fk_curso em tbl_alunos corresponda a um curso válido existente na tabela tbl_cursos. */

INSERT INTO tbl_cursos (nome_curso) VALUES ('GTI'), ('ADS'), ('ADM'), ('RH'), ('EDF'); /* Adição de dados "Cursos". */

INSERT INTO tbl_alunos (nome_aluno,data_nasc_aluno,fk_curso) /* Adição de dados "Alunos". */
VALUES ('Matheus Melo','1989-08-11', 2),
('Bruce Wayne Melo','2016-11-06', 3),
('Ashley','1959-03-02', 4),
('Gisele','2006-01-22', 2);

SELECT tbl_alunos.nome_aluno, tbl_cursos.nome_curso
FROM tbl_alunos INNER JOIN tbl_cursos
ON tbl_alunos.fk_curso = tbl_cursos.id_curso; /*Realiza a busca de dados nas tabelas de Aluno + Cursos, 
 A cláusula INNER JOIN especifica que apenas os registros onde há correspondência entre fk_curso em tbl_alunos e 
 id_curso em tbl_cursos serão retornados. */
