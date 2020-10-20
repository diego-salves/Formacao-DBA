CREATE DATABASE pratica1;
USE pratica1;
CREATE TABLE Cliente(
id_cli INT PRIMARY KEY,
nome_cli VARCHAR(50) NOT NULL,
cpf_cli VARCHAR(15),
data_nasc_cli DATE,
sexo_cli VARCHAR(30),
email_cli VARCHAR(100)
);
CREATE TABLE Cidade(
id_cid INT PRIMARY KEY,
nome_cid VARCHAR(30),
data_criacao_cid DATE
);
CREATE TABLE Endereco(
id_end INT PRIMARY KEY,
rua_end VARCHAR(50),
numero_end INT(10),
bairro_end VARCHAR(50)
);
CREATE TABLE Estado(
id_est INT PRIMARY KEY,
nome_est VARCHAR(20),
sigla_est VARCHAR(10),
regiao_est VARCHAR(30)
);
CREATE TABLE Pais(
id_pais INT PRIMARY KEY,
nome_pais VARCHAR(30),
continente_pais VARCHAR(30)
);