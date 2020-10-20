CREATE DATABASE pratica1;
USE pratica1;
CREATE TABLE Cliente(
id_cli INT,
nome_cli VARCHAR(50),
cpf_cli VARCHAR(15),
data_nasc_cli DATE,
sexo_cli CHAR(1),
email_cli VARCHAR(50)
);
CREATE TABLE Cidade(
id_cid INT,
nome_cid CHAR(30),
data_criacao_cid DATE
);
CREATE TABLE Endereco(
id_end INT,
rua_end VARCHAR(50),
numero_end INT(10),
bairro_end VARCHAR(50)
);
CREATE TABLE Estado(
id_est INT,
nome_est VARCHAR(20),
sigla_est CHAR(2),
regiao_est VARCHAR(30)
);
CREATE TABLE Pais(
id_pais INT,
nome_pais VARCHAR(30),
continente_pais VARCHAR(30)
);