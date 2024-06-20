/*Este banco de dados em SQL foi projetado para centralizar o gerenciamento de informações de produtos disponíveis para venda em um estabelecimento. 
Nele, são registrados detalhes essenciais de cada item, como nome, preço de venda, data de validade e a seção específica onde o produto está alocado dentro do estabelecimento.*/

CREATE DATABASE produtos; /* Criação do banco de dados.*/

USE produtos; /* Banco ativado.*/

CREATE TABLE tbl_produtos( /* Criação da tabela Produtos.*/
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR (150) NOT NULL,
preco_venda_produto DECIMAL (10,2),
data_validade_produto DATE NOT NULL,
secao_produto VARCHAR (100)
);

INSERT INTO tbl_produtos (nome_produto, preco_venda_produto, data_validade_produto, secao_produto) /* Adição de dados na tabela Produtos.*/
VALUES ('Achocolatado Néscau', '12.59', '2024-12-31', 'Achocolatados'),
('Achocolatado Toddy', '10.35', '2024-11-12', 'Achocolatados'),
('Suco ADES Laranja', '6.38', '2024-08-11', 'Sucos'),
('Suco ADES Abacaxi', '6.12', '2024-08-11', 'Sucos'),
('Suco ADES Uva', '6.02', '2024-08-11', 'Sucos'),
('Suco ADES Caju', '6.19', '2024-08-11', 'Sucos'),
('Laranja Pêra', '7.29', '2024-04-29', 'FLV'),
('Laranja Lima', '5.55', '2024-04-29', 'FLV'),
('Banana', '9.57', '2024-04-29', 'FLV'),
('Banana', '9.57', '2024-04-29', 'FLV'),
('Uva Verde', '8.34', '2024-04-29', 'FLV');

/*UPDATE*/
UPDATE tbl_produtos SET nome_produto = 'Suco de Laranja ADES' WHERE id_produto = 3; /* Atualiza um dado.*/
 
/*DELETE*/
DELETE FROM tbl_produtos where id_produto = 5; /*Deleta um produto no ID 5*/
 
/*UPDATE*/
UPDATE tbl_produtos SET secao_produto = NULL WHERE id_produto = 9; /* Atualiza um produto no ID 9*/
 
/*SELECT*/
SELECT nome_produto, preco_venda_produto FROM tbl_produtos; /* Consulta nome do produto e preço de vendas*/
 
SELECT * FROM tbl_produtos WHERE id_produto = 3; /* Consulta o registro no ID 3*/

SELECT * FROM tbl_produtos WHERE id_produto < 3; /* Exibe registros menor que o ID 3*/

SELECT * FROM tbl_produtos WHERE id_produto <= 3; /* Exibe registros menor ou igual ID 3*/

SELECT * FROM tbl_produtos WHERE id_produto <> 3; /* Retorna registros diferente do ID 3*/

SELECT * FROM tbl_produtos WHERE id_produto >= 3; /* Exibe registros maior igual ao ID 3*/

SELECT * FROM tbl_produtos WHERE nome_produto LIKE 'LARANJA%'; /* Retorna dados onde o registro começa com a palavra LARANJA*/

SELECT * FROM tbl_produtos WHERE secao_produto LIKE '%FLV%' OR secao_produto LIKE '%Sucos%'; /* Consulta onde o valor é FLV ou SUCOS*/

SELECT * FROM tbl_produtos WHERE secao_produto LIKE '%FLV%' OR secao_produto LIKE '%Sucos%' OR id_produto = 1; /* Consulta onde o valor é FLV ou SUCOS ou ID é igual a 1*/

SELECT * FROM tbl_produtos WHERE secao_produto LIKE '%FLV%' OR secao_produto LIKE '%Sucos%' OR id_produto = 7; /* Verifica os dados onde possui FLV ou SUCOS ou ID igual a 7*/

SELECT * FROM tbl_produtos WHERE secao_produto LIKE '%FLV%' AND preco_venda_produto > '7.00'; /* Realiza a busca onde possui a palavra FLV e preço maior que R$ 7.00*/
