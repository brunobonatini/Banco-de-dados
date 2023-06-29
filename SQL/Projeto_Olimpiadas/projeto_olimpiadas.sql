-- Projeto - Olimpíadas

-- Criando o Banco de Dados
CREATE DATABASE db_olimpiadas DEFAULT CHARACTER SET utf8 ;

-- Usando o Banco de Dados
USE db_olimpiadas;

-- Criando as tabelas
CREATE TABLE db_olimpiadas.tb_atletas (
  `name` VARCHAR(200) NULL,
  `noc` VARCHAR(200) NULL,
  `discipline` VARCHAR(200) NULL
  );

CREATE TABLE db_olimpiadas.tb_treinadores (
  `name` VARCHAR(200) NULL,
  `noc` VARCHAR(200) NULL,
  `discipline` VARCHAR(200) NULL,
  `event` VARCHAR(200) NULL
  );

CREATE TABLE db_olimpiadas.tb_medalhas (
  `rank` INT NULL,
  `noc` VARCHAR(200) NULL,
  `gold` INT NULL,
  `silver` INT NULL,
  `bronze` INT NULL,
  `total` INT NULL,
  `rank_total` INT NULL
  );

CREATE TABLE db_olimpiadas.tb_entradas_genero (
  `discipline` VARCHAR(200) NULL,
  `female` INT NULL,
  `male` INT NULL,
  `total` INT NULL
  );

CREATE TABLE db_olimpiadas.tb_time (
  `name` VARCHAR(200) NULL,
  `discipline` VARCHAR(200) NULL,
  `noc` VARCHAR(200) NULL,
  `event` VARCHAR(200) NULL
  );

-- Buscar os nomes dos Atletas para a modalidade Natação
SELECT name
FROM tb_atletas
WHERE discipline = "Swimming"

-- Buscar os nome dos Atletas para a modalidade Basket
SELECT name 
FROM tb_treinadores
WHERE discipline = "Basketball"