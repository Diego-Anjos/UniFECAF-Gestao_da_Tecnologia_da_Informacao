/*PROJETO EM GRUPO*/

/*Descrição: Nosso projeto visa criar um sistema de banco de dados para uma nova loja de chocolates, proporcionando uma gestão eficiente e organizada das operações diárias, 
desde o gerenciamento de clientes até o controle de estoque e pedidos aos fornecedores.*/

/* 1. Tabela de Clientes: Destinada ao armazenamento de informações de contato dos clientes, permitindo o envio de promoções e descontos exclusivos.

2. Tabela de Chocolates: Com o objetivo de armazenar informações e características dos produtos disponíveis na loja.

3. Tabela de Estoque: Criada para monitorar o abastecimento de estoque.

4. Tabela de Fornecedores: Essencial para registrar informações de fornecedores e seus contatos, facilitando a realização de novos pedidos para a loja. */

/* Objetivo final:

Com este banco de dados, a loja de chocolates não apenas aumentará sua eficiência operacional, mas também melhorará a experiência geral do cliente, 
garantindo que produtos estejam sempre disponíveis e que ofertas sejam direcionadas de forma precisa.

 */

/* UniFECAF

Membros: Diego, Eduardo, Erick, Gustavo e Pedro.
Matéria: Banco de Dados.
Professor: Matheus.

*/

CREATE DATABASE loja_chocolate; /* Cria o banco de dados "Loja Chocolates". */

USE loja_chocolate; /* Ativa o banco de dados. */

CREATE TABLE tbl_clientes( /* Cria a tabela de Clientes. */
id_clientes INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR (200) NOT NULL,
cpf VARCHAR(14) UNIQUE NOT NULL,
email_cliente VARCHAR (100),
telefone_cliente VARCHAR (12),
fk_chocolates INT
);

CREATE TABLE tbl_chocolates( /* Cria a tabela de Chocolates. */
id_chocolates INT AUTO_INCREMENT PRIMARY KEY,
marca_chocolate VARCHAR (60) NOT NULL,
titulo VARCHAR (60) NOT NULL,
gramas VARCHAR (6),
unidades int,
preco_chocolate float,
sabor VARCHAR (20),
data_vencimento DATE,
fk_estoque INT
);

CREATE TABLE tbl_estoque( /* Cria a tabela de estoque. */
id_estoque INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR (50),
quantidade INT,
preco_kit_produto float,
fk_fornecedor INT
);

CREATE TABLE tbl_fornecedor( /* Cria a tabela de fornecedor. */
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome_empresa VARCHAR (100),
endereco_rua VARCHAR (100),
numero VARCHAR (8),
bairro VARCHAR (30),
cidade VARCHAR (30),
uf VARCHAR (2),
cep VARCHAR (10),
telefone_fornecedor VARCHAR (12),
email_fornecedor VARCHAR (100)
);

/* COMANDOS ALTER TABLE */

ALTER TABLE tbl_clientes ADD CONSTRAINT FOREIGN KEY (fk_chocolates)
REFERENCES tbl_chocolates (id_chocolates); /* Criação da chave estrangeira, adicionando as restrições de chave estrangeira da tabela clientes (fk_chocolates) para tabela chocolates (id_chocolates). */

ALTER TABLE tbl_chocolates ADD CONSTRAINT FOREIGN KEY (fk_estoque) 
REFERENCES tbl_estoque (id_estoque); /* Criação da chave estrangeira, adicionando as restrições de chave estrangeira da tabela chocolates (fk_estoque) para tabela estoque (id_estoque). */

ALTER TABLE tbl_estoque ADD CONSTRAINT FOREIGN KEY (fk_fornecedor) 
REFERENCES tbl_fornecedor (id_fornecedor); /* Criação da chave estrangeira, adicionando as restrições de chave estrangeira da tabela estoque (fk_fornecedor) para tabela fornecedor (id_fornecedor). */

/* INSERT TABELA FORNECEDOR */

INSERT INTO tbl_fornecedor (nome_empresa, endereco_rua, numero, bairro, cidade, uf, cep, telefone_fornecedor, email_fornecedor) VALUES 
('Empresa A','Rua Augusta', '1', 'Consolação', 'São Paulo', 'SP', '01305-000', '1198888-8888', 'empresaA@email.com'),
('Empresa B', 'Av. Paulista', '2', 'Bela Vista', 'São Paulo', 'SP', '01310-100', '1111111-1111', 'empresaB@emaail.com'),
('Empresa C', 'Rua Oscar Freire', '3', 'Cerqueira César', 'São Paulo', 'SP', '01426-000', '1155555-5555', 'empresaC@email.com'),
('Empresa D', 'Av. Brigadeiro Faria Lima', '4', 'Jardim Paulistano', 'São Paulo', 'SP', '01452-000', '1133333-3333', 'empresaD@email.com'),
('Empresa E', 'Rua da Consolação', '5', 'Consolação', 'São Paulo', 'SP', '01301-000', '1199999-9999', 'empresaE@email.com');

/* INSERT TABELA ESTOQUE */

INSERT INTO tbl_estoque (nome_produto, quantidade, preco_kit_produto, fk_fornecedor) VALUES ('Pacote de Chocolates Lacta', 30, 300.19, 1),
('Pacote de Chocolates Garoto', 40, 415.20, 2),
('Pacote de Chocolates Mars', 7, 200.19, 3),
('Pacote de Chocolates Nestlé', 15, 340.29, 4),
('Pacote de Barras de Chocolate Nestlé', 14, 250.09, 5);

/* INSERT TABELA CHOCOLATES */

INSERT INTO tbl_chocolates 
(marca_chocolate, titulo, gramas, unidades, preco_chocolate, sabor, data_vencimento, fk_estoque) VALUES ('Nestlé', 'Nestlé KitKat Wafer', '41.5g', 1, 3.98, 'Chocolate ao leite','2025-08-01', 1),
('Lacta', 'Chocolate Lacta Intense Amargo', '85g', 1, 11.05, 'Chocolate', '2024-06-10', 2),
('Garoto', 'Chocolate Amargo', '75g', 1, 7.36, 'Cacau', '2025-01-01', 3),
('Garoto', 'Chocolate Mini Talento Avelãs', '25g', '15', 37.29, 'Avelã', '2026-02-10', 4),
('Snickers', 'Chocolate Snickers Mars Caixa', '42g', 20, 49.90, 'Chocolate', '2025-03-13', 5);

/* INSERT TABELA CLIENTE */

INSERT INTO tbl_clientes (nome_cliente, cpf, email_cliente, telefone_cliente, fk_chocolates) VALUES ('Fabio', '777.777.777-77', 'fabio@email.com', '1198888-8888', 1),
('William', '444.444.444-44', 'william@email.com', '1194444-4444', 2),
('Sarah', '555.555.555-55', 'sarah@email.com', '1195555-5555', 3),
('Larissa', '000.000.000-00', 'larissa@email.com', '1190000-0000', 4),
('Andressa', '111.111.111-11', 'andressa@email.com', '1191111-1111', 5);

/* COMANDOS SELECT INNER JOIN */

SELECT tbl_clientes.nome_cliente, tbl_clientes.email_cliente, 
tbl_clientes.telefone_cliente, tbl_chocolates.marca_chocolate, 
tbl_chocolates.unidades, tbl_chocolates.preco_chocolate 
FROM tbl_clientes INNER JOIN tbl_chocolates ON
 tbl_clientes.fk_chocolates = tbl_chocolates.id_chocolates; /* Busca de registros com INNER JOIN nas tabelas de Clientes e Chocolates. */

SELECT tbl_estoque.nome_produto, tbl_estoque.quantidade, /* Consulta de registros usando INNER JOIN nas tabelas de Estoque e Fornecedor. */
tbl_estoque.preco_kit_produto, tbl_fornecedor.nome_empresa, 
tbl_fornecedor.telefone_fornecedor, tbl_fornecedor.endereco_rua 
FROM tbl_estoque INNER JOIN tbl_fornecedor ON
tbl_estoque.fk_fornecedor = tbl_fornecedor.id_fornecedor;
