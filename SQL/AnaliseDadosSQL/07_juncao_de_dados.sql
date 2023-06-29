-- Junção de dados

-- Criando um banco de dados de vendas

CREATE DATABASE `db_vendas`;

CREATE TABLE `db_vendas`.`tb_clientes` (
  `id_cliente` INT NULL,
  `nome_cliente` VARCHAR(50) NULL,
  `endereco_cliente` VARCHAR(50) NULL,
  `cidade_cliente` VARCHAR(50) NULL,
  `estado_cliente` VARCHAR(50) NULL);
  
INSERT INTO `db_vendas`.`tb_clientes` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (1, "Bruno Silva", "Rua 25", "Sao Paulo", "SP");

INSERT INTO `db_vendas`.`tb_clientes` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (2, "Joao Carlos", "Rua 37", "Fortaleza", "CE");

INSERT INTO `db_vendas`.`tb_clientes` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (3, "Paulo Lopes", "Rua 44", "Rio de Janeiro", "RJ");

INSERT INTO `db_vendas`.`tb_clientes` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (4, "Pedro Souza", "Rua 69", "Belo Horizonte", "MG");

INSERT INTO `db_vendas`.`tb_clientes` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (5, "Leticia Garcia", "Rua 78", "Porto Alegre", "RS");

CREATE TABLE `db_vendas`.`tb_pedidos` (
  `id_pedido` INT NULL,
  `id_cliente` INT NULL,
  `id_vendedor` INT NULL,
  `data_pedido` DATETIME NULL,
  `id_entrega` INT NULL);
  
INSERT INTO `db_vendas`.`tb_pedidos` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`)
VALUES (1001, 1, 5, now(), 23);

INSERT INTO `db_vendas`.`tb_pedidos` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`)
VALUES (1002, 1, 7, now(), 24);

INSERT INTO `db_vendas`.`tb_pedidos` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`)
VALUES (1003, 2, 5, now(), 23);

CREATE TABLE `db_vendas`.`tb_vendedores` (
  `id_vendedor` INT NULL,
  `nome_vendedor` VARCHAR(50) NULL);
  
INSERT INTO `db_vendas`.`tb_vendedores` (`id_vendedor`, `nome_vendedor`)
VALUES (1, "Vendedor 1");

INSERT INTO `db_vendas`.`tb_vendedores` (`id_vendedor`, `nome_vendedor`)
VALUES (2, "Vendedor 2");

INSERT INTO `db_vendas`.`tb_vendedores` (`id_vendedor`, `nome_vendedor`)
VALUES (3, "Vendedor 3");

INSERT INTO `db_vendas`.`tb_vendedores` (`id_vendedor`, `nome_vendedor`)
VALUES (4, "Vendedor 4");

INSERT INTO `db_vendas`.`tb_vendedores` (`id_vendedor`, `nome_vendedor`)
VALUES (5, "Vendedor 5");

INSERT INTO `db_vendas`.`tb_vendedores` (`id_vendedor`, `nome_vendedor`)
VALUES (6, "Vendedor 6");

INSERT INTO `db_vendas`.`tb_vendedores` (`id_vendedor`, `nome_vendedor`)
VALUES (7, "Vendedor 7");

SELECT * FROM tb_clientes;

SELECT * FROM tb_pedidos;

SELECT * FROM tb_vendedores;

-- Unindo tabelas para responder perguntas de negocio

-- Retornar o ID do pedido e nome do cliente
-- Inner Join (tras os dados somente quando há relação entre uma tabela e outra)

SELECT P.id_pedido, C.nome_cliente
FROM db_vendas.tb_pedidos AS P
INNER JOIN db_vendas.tb_clientes AS C 
ON P.id_cliente = C.id_cliente;

SELECT P.id_pedido, C.nome_cliente
FROM db_vendas.tb_pedidos AS P, db_vendas.tb_clientes AS C
WHERE P.id_cliente = C.id_cliente;

-- Retornar ID do pedido, nome do cliente e nome do vendedor
-- Inner Join com 3 tabelas

SELECT P.id_pedido, C.nome_cliente, V.nome_vendedor
FROM ((db_vendas.tb_pedidos AS P
INNER JOIN db_vendas.tb_clientes AS C ON P.id_cliente = C.id_cliente)
INNER JOIN db_vendas.tb_vendedores AS V ON P.id_vendedor = V.id_vendedor);

SELECT 
P.id_pedido, 
C.nome_cliente, 
V.nome_vendedot
FROM 
db_vendas.tb_pedidos AS P,
db_vendas.tb_clientes AS C,
db_vendas.tb_vendedoes AS V
WHERE
P.id_cliente = C.id_cliente 
AND P.id_vendedor = V.id_vendedor;

-- Inner Join - Padrão ANSI

SELECT P.id_pedido, C.nome_cliente
FROM db_vendas.tb_pedidos AS P
JOIN db_vendas.tb_clientes AS C
ON P.id_cliente = C.id_cliente;

-- Inner Join quando o nome da coluna é o mesmo em ambas as tabelas

SELECT P.id_pedido, C.nome_cliente
FROM db_vendas.tb_pedidos AS P 
JOIN db_vendas.tb_clientes AS C 
USING (id_cliente);
WHERE C.nome_cliente LIKE 'Bruno%'
ORDER BY P.id_pedido;

-- Left Join - Mostra todos os dados da tabela da esquerda mesmo que não há dados na tabela da direita

SELECT C.nome_cliente, P.id_pedido
FROM db_vendas.tb_clientes AS C 
LEFT JOIN db_vendas.tb_pedidos as P 
ON C.id_cliente = P.id_cliente;

-- Invertendo a ordem das tabelas o resultado é diferente (tras o resultado do JOIN)

SELECT C.nome_cliente, P.id_pedido
FROM db_vendas.tb_pedidos AS P
LEFT JOIN db_vendas.tb_clientes as C
ON C.id_cliente = P.id_cliente;

-- RIGHT JOIN -- Mostra todos os dados da tabela da direita mesmo que não há dados na tabela da esquerda

SELECT C.nome_cliente, P.id_pedido
FROM db_vendas.tb_pedidos AS P
RIGHT JOIN db_vendas.tb_clientes AS C
ON C.id_cliente = P.id_cliente;

-- Retornar a data do pedido, nome do cliente, todos os vendedores com ou sem pedidos associados.
-- Ordenar o resultado pelo nome no cliente

SELECT P.data_pedido, C.nome_cliente, V.nome_vendedor, P.id_pedido
FROM ((db_vendas.tb_pedidos AS P
LEFT JOIN db_vendas.tb_clientes AS C ON C.id_cliente = P.id_cliente)
RIGHT JOIN db_vendas.tb_vendedores as V ON P.id_vendedor = V.id_vendedor)
ORDER BY nome_cliente DESC;

SELECT 
	CASE
		WHEN P.data_pedido IS NULL THEN 'Sem Pedido'
		ELSE P.data_pedido
	END AS data_pedido,
	CASE
		WHEN C.nome_cliente IS NULL THEN 'Sem Pedido'
        ELSE C.nome_cliente
	END AS nome_cliente,
    V.nome_vendedor
FROM ((db_vendas.tb_pedidos AS P
JOIN db_vendas.tb_clientes AS C ON C.id_cliente = P.id_cliente)
RIGHT JOIN db_vendas.tb_vendedores as V ON P.id_vendedor = V.id_vendedor)
ORDER BY nome_cliente;

