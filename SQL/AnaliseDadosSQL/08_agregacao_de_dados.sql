-- Criando o Banco de Dados
CREATE DATABASE `vendas` ;

-- Criando a tabela de Clientes
CREATE TABLE `vendas`.`TB_CLIENTES` (
  `id_cliente` INT NULL,
  `nome_cliente` VARCHAR(50) NULL,
  `endereco_cliente` VARCHAR(50) NULL,
  `cidade_cliente` VARCHAR(50) NULL,
  `estado_cliente` VARCHAR(50) NULL);

-- Inserindo dados na tabela de Clientes
INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (1, "Bob Silva", "Rua 67", "Fortaleza", "CE");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (2, "Ronaldo Azevedo", "Rua 64", "Campinas", "SP");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (3, "John Lenon", "Rua 42", "Rio de Janeiro", "RJ");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (4, "Billy Joel", "Rua 39", "Campos", "RJ");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (5, "Lady Gaga", "Rua 45", "Porto Alegre", "RS");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (6, "Zico Nunes", "Rua 67", "Fortaleza", "CE");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (7, "Maria Aparecida", "Rua 61", "Natal", "RN");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (8, "Elton John", "Rua 22", "Ubatuba", "SP");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (9, "Dario Maravilha", "Rua 14", "Ubatuba", "SP");

INSERT INTO `vendas`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (10, "Lebron James", "Rua 29", "Fortaleza", "CE");

-- Criando a tabela de Pedidos
CREATE TABLE `vendas`.`TB_PEDIDOS` (
  `id_pedido` INT NULL,
  `id_cliente` INT NULL,
  `id_vendedor` INT NULL,
  `data_pedido` DATETIME NULL,
  `id_entrega` INT NULL,
  `valor_pedido` DECIMAL(10,2) NULL);

-- Inserindo dados na tabela de Pedidos
INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1001, 1, 5, now(), 23, 100.00);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1002, 1, 7, now(), 24, 112.00);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1003, 2, 5, now(), 23, 250.00);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1004, 3, 5, now(), 23, 340.00);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1005, 4, 7, now(), 24, 1290.00);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1006, 9, 5, now(), 23, 89.00);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1007, 5, 5, now(), 23, 468.50);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1008, 1, 7, now(), 24, 572.20);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1009, 8, 5, now(), 23, 187.45);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1010, 7, 7, now(), 24, 579.20);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1011, 10, 5, now(), 23, 192.45);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1012, 8, 5, now(), 23, 140.45);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1013, 5, 7, now(), 28, 573.20);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1014, 6, 5, now(), 27, 191.45);

INSERT INTO `vendas`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1015, 6, 4, now(), 22, 154.37);

-- Criando a tabela de Vendedores
CREATE TABLE `vendas`.`TB_VENDEDOR` (
  `id_vendedor` INT NULL,
  `nome_vendedor` VARCHAR(50) NULL,
  `dept_vendedor` VARCHAR(50) NULL);

-- Inserindo dados na tabela Vendedores
INSERT INTO `vendas`.`TB_VENDEDOR` (`id_vendedor`, `nome_vendedor`, `dept_vendedor`)
VALUES (1, "Vendedor 1", "Eletronicos");

INSERT INTO `vendas`.`TB_VENDEDOR` (`id_vendedor`, `nome_vendedor`, `dept_vendedor`)
VALUES (2, "Vendedor 2", "Vestuario");

INSERT INTO `vendas`.`TB_VENDEDOR` (`id_vendedor`, `nome_vendedor`, `dept_vendedor`)
VALUES (3, "Vendedor 3", "Eletronicos");

INSERT INTO `vendas`.`TB_VENDEDOR` (`id_vendedor`, `nome_vendedor`, `dept_vendedor`)
VALUES (4, "Vendedor 4", "Moveis");

INSERT INTO `vendas`.`TB_VENDEDOR` (`id_vendedor`, `nome_vendedor`, `dept_vendedor`)
VALUES (5, "Vendedor 5", "Eletrodomesticos");

INSERT INTO `vendas`.`TB_VENDEDOR` (`id_vendedor`, `nome_vendedor`, `dept_vendedor`)
VALUES (6, "Vendedor 6", "Eletrodomesticos");

INSERT INTO `vendas`.`TB_VENDEDOR` (`id_vendedor`, `nome_vendedor`, `dept_vendedor`)
VALUES (7, "Vendedor 7", "Eletronicos");

-- Lista os pedidos
SELECT * FROM vendas.tb_pedidos;

-- Média do valor dos pedidos
SELECT AVG(valor_pedido) AS media
FROM vendas.tb_pedidos;

-- Média do valor dos pedidos por cidade
SELECT AVG(valor_pedido) AS media, cidade_cliente
FROM vendas.tb_pedidos P, vendas.tb_clientes C
WHERE P.id_cliente = C.id_cliente
GROUP BY cidade_cliente;

-- Média do valor dos pedidos por cidade arredondando a média
SELECT ROUND(AVG(valor_pedido),2) AS media, cidade_cliente
FROM vendas.tb_pedidos P, vendas.tb_clientes C
WHERE P.id_cliente = C.id_cliente
GROUP BY cidade_cliente;

-- Média do valor dos pedidos por cidade
SELECT ROUND(AVG(valor_pedido),2) AS media, cidade_cliente
FROM vendas.tb_pedidos P, vendas.tb_clientes C
WHERE P.id_cliente = C.id_cliente
GROUP BY cidade_cliente
ORDER BY media DESC;

-- Média do valor dos pedidos por cidade com INNER JOIN
SELECT ROUND(AVG(valor_pedido),2) AS media, cidade_cliente
FROM vendas.tb_pedidos P 
INNER JOIN vendas.tb_clientes C
ON P.id_cliente = C.id_cliente
GROUP BY cidade_cliente
ORDER BY media DESC;

-- Inserindo um novo registro na tabela de clientes
INSERT INTO `cap05`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (11, "Michael Jordan", "Rua 21", "Palmas", "TO");

-- Média do valor dos pedidos por cidade com INNER JOIN
SELECT ROUND(AVG(valor_pedido),2) AS media, cidade_cliente
FROM vendas.tb_pedidos P 
INNER JOIN vendas.tb_clientes C
ON P.id_cliente = C.id_cliente
GROUP BY cidade_cliente
ORDER BY media DESC;

-- Média do valor dos pedidos por cidade com RIGHT JOIN
SELECT ROUND(AVG(valor_pedido),2) AS media, cidade_cliente
FROM vendas.tb_pedidos P 
RIGHT JOIN vendas.tb_clientes C
ON P.id_cliente = C.id_cliente
GROUP BY cidade_cliente
ORDER BY media DESC;

-- Média do valor dos pedidos por cidade com RIGHT JOIN e CASE
SELECT 
	CASE 
		WHEN ROUND(AVG(valor_pedido),2) IS NULL THEN 0
		ELSE ROUND(AVG(valor_pedido),2)
	end AS media, 
	cidade_cliente
FROM vendas.tb_pedidos P 
RIGHT JOIN vendas.tb_clientes C
ON P.id_cliente = C.id_cliente
GROUP BY cidade_cliente
ORDER BY media DESC;

-- Calculando o valor total dos pedidos
SELECT SUM(valor_pedido) AS total
FROM tb_pedidos;

-- Calculando o valor total dos pedidos por cidade (JOIN)
SELECT SUM(valor_pedido) AS total, cidade_cliente
FROM tb_pedidos P, tb_clientes C 
WHERE P.id_cliente = C.id_cliente
GROUP BY cidade_cliente;

-- Inserindo mais 2 clientes
INSERT INTO `cap05`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (12, "Bill Gates", "Rua 14", "Santos", "SP");

INSERT INTO `cap05`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (13, "Jeff Bezos", "Rua 29", "Osasco", "SP");

-- Inserindo mais 3 pedidos
INSERT INTO `cap05`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1016, 11, 5, now(), 27, 234.09);

INSERT INTO `cap05`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1017, 12, 4, now(), 22, 678.30);

INSERT INTO `cap05`.`TB_PEDIDOS` (`id_pedido`, `id_cliente`, `id_vendedor`, `data_pedido`, `id_entrega`, `valor_pedido`)
VALUES (1018, 13, 4, now(), 22, 978.30);

-- Não podemos colocar as colunas no SELECT de forma aleatória, se colocou no SELECT tem que descer no GROUP BY, menos a coluna de operação
-- Calculando o valor total dos pedidos por cidade e estado, ordenado por estado (JOIN)
SELECT SUM(valor_pedido) AS total, cidade_cliente, estado_cliente
FROM tb_pedidos P, tb_clientes C
WHERE P.id_cliente = C.id_cliente
GROUP BY cidade_cliente, estado_cliente
ORDER BY estado_cliente;

-- Inserindo mais 2 clientes
INSERT INTO `cap05`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (14, "Melinda Gates", "Rua 14", "Barueri", "SP");

INSERT INTO `cap05`.`TB_CLIENTES` (`id_cliente`, `nome_cliente`, `endereco_cliente`, `cidade_cliente`, `estado_cliente`)
VALUES (15, "Barack Obama", "Rua 29", "Barueri", "SP");

-- Total do valor dos pedidos por cidade e estado com RIGHT JOIN e CASE
SELECT
	CASE
		WHEN FLOOR(SUM(valor_pedido)) IS NULL THEN 0
        ELSE FLOOR(SUM(valor_pedido))
        end AS total, 
        cidade_cliente, estado_cliente -- FLOOR faz o arredondamento para cima do valor inteiro
FROM tb_pedidos P 
RIGHT JOIN tb_clientes C 
ON P.id_cliente = C.id_cliente
GROUP BY cidade_cliente, estado_cliente
ORDER BY estado_cliente;

-- Supondo que a comissão de cada vendedor seja de 10%, quanto cada vendedor ganhou de comissão no estado do Ceará?
SELECT ROUND(SUM(valor_pedido * 0.10), 2) AS comissao, nome_vendedor, estado_cliente
FROM tb_clientes C, tb_pedidos P, tb_vendedores V
WHERE C.id_cliente = P.id_cliente
AND P.id_vendedor = V.id_vendedor
AND estado_cliente = 'CE'
GROUP BY nome_vendedor, estado_cliente
ORDER BY estado_cliente;

-- Retorne 0 se não houve ganho de comissão
SELECT
	CASE
		WHEN ROUND(SUM(valor_pedido * 0.10), 2) IS NULL THEN 0
		ELSE ROUND(SUM(valor_pedido * 0.10), 2)
	end AS comissao,
	nome_vendedor,
	CASE 
		WHEN estado_cliente IS NULL THEN 'Não atua no Ceará'
		ELSE estado_cliente
	end AS estado_cliente
FROM tb_clientes C 
INNER JOIN tb_pedidos P
RIGHT JOIN tb_vendedores V
ON C.id_cliente = P.id_cliente AND P.id_vendedor = V.id_vendedor
AND estado_cliente = 'CE'
GROUP BY nome_vendedor, estado_cliente
ORDER BY estado_cliente;

SELECT * FROM vendas.tb_pedidos;

-- Valor mínimo e máximo dos valores de pedidos
SELECT MAX(valor_pedido) AS valor_maximo, MIN(valor_pedido) AS valor_minimo
FROM tb_pedidos;

-- Contagem do numero total de pedidos
SELECT COUNT(*)
FROM tb_pedidos; 

-- Contagem do numero de clientes que fizeram pedidos
SELECT COUNT(id_cliente) -- contagem dos ids sem remover duplicados
FROM tb_pedidos;

SELECT * 
FROM tb_pedidos
ORDER BY id_cliente;

SELECT COUNT(DISTINCT id_cliente) -- contagem dos ids removendo os duplicados
FROM tb_pedidos;

-- Numero de pedidos de clientes do Ceara
SELECT COUNT(C.id_cliente) AS total_pedidos
FROM tb_pedidos P, tb_clientes C
WHERE P.id_cliente = C.id_cliente
AND estado_cliente = 'CE';

-- Numero de clientes unicos do CE que fizeram pedidos, com o nome de cada cliente
SELECT nome_cliente, cidade_cliente, COUNT(DISTINCT C.id_cliente) AS clientes_unicos
FROM tb_pedidos P, tb_clientes C
WHERE P.id_cliente = C.id_cliente
AND estado_cliente = 'CE'
GROUP BY nome_cliente, cidade_cliente;

SELECT nome_cliente, cidade_cliente, COUNT(id_pedido) AS numero_pedidos
FROM tb_pedidos P, tb_clientes C
WHERE P.id_cliente = C.id_cliente
AND estado_cliente = 'CE'
GROUP BY nome_cliente, cidade_cliente;

-- Algum vendedor participou de vendas cujo valor do pedido tenha sido superior a 600 no estado de SP?
SELECT nome_cliente, cidade_cliente, valor_pedido, nome_vendedor 
FROM tb_clientes C, tb_pedidos P, tb_vendedores V
WHERE C.id_cliente = P.id_cliente 
AND P.id_vendedor = V.id_vendedor
AND estado_cliente = 'SP'
AND valor_pedido > 600
ORDER BY valor_pedido DESC;

SELECT nome_cliente, cidade_cliente, valor_pedido, nome_vendedor
FROM tb_pedidos P
INNER JOIN tb_clientes C
INNER JOIN tb_vendedores V
ON P.id_cliente = C.id_cliente
AND P.id_vendedor = V.id_vendedor
AND estado_cliente = 'SP'
AND valor_pedido > 600
ORDER BY valor_pedido DESC;