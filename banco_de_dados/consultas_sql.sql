#CREATE DATABASE bradesco;

# ctrl + f9 (roda o comando selecionado)

/*
CREATE TABLE vendedores(
	cod_vendedor INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);
*/

/*
CREATE TABLE clientes(
	cod_cliente INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);
*/


CREATE TABLE vendas(
	cod_venda INT PRIMARY KEY,
	data_venda DATE NOT NULL,
	
	cod_cliente INT,
	cod_vendedor INT
);

DROP TABLE vendas;

ALTER TABLE vendas ADD CONSTRAINT fk_vendas_cod_cliente FOREIGN KEY (cod_cliente) REFERENCES clientes (cod_cliente);

ALTER TABLE vendas ADD CONSTRAINT fk_vendas_cod_vendedor FOREIGN KEY (cod_vendedor) REFERENCES vendedores (cod_vendedor);

SELECT * FROM vendas;
SELECT * FROM clientes;
SELECT * FROM vendedores;

/* Gabarito exercício 02

ALTER TABLE vendas CHANGE codvendas cod_vendas INT;
ALTER TABLE vendas ADD NOME_VENDA VARCHAR(255);
ALTER TABLE vendas MODIFY COLUMN NOME_VENDA DATE;
ALTER TABLE VENDAS DROP COLUMN NOME_VENDA;
*/

/* Gabarito exercício 02

ALTER TABLE vendas ADD vendas_teste VARCHAR(255);
ALTER TABLE vendas MODIFY COLUMN vendas_teste VARCHAR(100);    
ALTER TABLE vendas change datavenda data_venda DATE;    
ALTER TABLE vendas DROP COLUMN vendas_teste;
*/

# Exercício 01
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (1, 'ana');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (2, 'joão');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (3, 'caio');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (4, 'júlia');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (5, 'maria');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (6, 'cláudia');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (7, 'marcos');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (8, 'júlio');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (9, 'thaís');
INSERT INTO clientes(cod_cliente, nome) 
	VALUES (10, 'josé');
	
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (1, 'raquel');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (2, 'mario');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (3, 'jorge');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (4, 'theo');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (5, 'paula');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (6, 'maria');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (7, 'joão');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (8, 'marcia');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (9, 'igor');
INSERT INTO vendedores(cod_vendedor, nome) 
	VALUES (10, 'bruna');

INSERT INTO vendas(cod_venda, data_venda, cod_cliente, cod_vendedor) 
	VALUES (1, '2023-04-27', 5, 7);
INSERT INTO vendas(cod_venda, data_venda, cod_cliente, cod_vendedor) 
	VALUES (2, '2023-03-20', 2, 6);
INSERT INTO vendas(cod_venda, data_venda, cod_cliente, cod_vendedor) 
	VALUES (3, '2023-02-04', 1, 2);
INSERT INTO vendas(cod_venda, data_venda, cod_cliente, cod_vendedor) 
	VALUES (4, '2023-04-15', 1, 7);
INSERT INTO vendas(cod_venda, data_venda, cod_cliente, cod_vendedor) 
	VALUES (5, '2023-04-16', 8, 7);
	
# Mudificar a tabela a partir de um filtro

UPDATE CLIENTES SET NOME = 'amauri' WHERE cod_cliente = 1;
UPDATE CLIENTES SET NOME = 'rafael' WHERE cod_cliente = 2;
UPDATE CLIENTES SET NOME = 'diego' WHERE cod_cliente = 3;
UPDATE CLIENTES SET NOME = 'ivison' WHERE cod_cliente = 4;
UPDATE CLIENTES SET NOME = 'amanda' WHERE cod_cliente = 5;
 
SELECT * FROM clientes;

# Join

SELECT * FROM vendas vd # vd é um apelido pra vendas (tipo alias)
   INNER JOIN vendedores vs 
   ON vd.cod_vendedor = vs.cod_vendedor;
   
SELECT * FROM vendas vd
   INNER JOIN clientes ct 
   ON vd.cod_cliente = ct.cod_cliente;
   
# Exercício 04
# 1.
SELECT * FROM vendas vd
   INNER JOIN clientes ct 
   ON vd.cod_cliente = ct.cod_cliente;

# 2.
SELECT * FROM vendas vd
   LEFT JOIN vendedores vs 
   ON vd.cod_vendedor = vs.cod_vendedor;

# 3.
SELECT * FROM vendas vd
   RIGHT JOIN vendedores vs 
   ON vd.cod_vendedor = vs.cod_vendedor;
   
# 4.
SELECT * FROM vendas vd
	LEFT JOIN vendedores vs ON vd.cod_vendedor = vs.cod_vendedor
	and clientes ct ON vd.cod_cliente = ct.cod_cliente;
