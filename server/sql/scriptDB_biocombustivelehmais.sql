CREATE DATABASE IF NOT EXISTS biocombustivelehmais;

CREATE TABLE IF NOT EXISTS tbCADASTRO
(CPF VARCHAR(11) NOT NULL,
NOME VARCHAR(100) NOT NULL,
EMAIL VARCHAR(50) NOT NULL,
SENHA VARCHAR(100) NOT NULL,
LIXEIRA BOOLEAN NOT NULL DEFAULT 0,
PRIMARY KEY (CPF))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tbCalculo
(ID INT NOT NULL AUTO_INCREMENT,
DATA DATE NULL,
ETANOL VARCHAR(100) NULL,
GASOLINA VARCHAR(100) NULL,
LITROS VARCHAR(100) NOT NULL,
INDICE VARCHAR(100) NULL,
ID_NOME VARCHAR(100) NOT NULL,
PRIMARY KEY (ID),
CONSTRAINT FK_NOME_CALCULO
FOREIGN KEY (ID_NOME) REFERENCES tbCADASTRO (NOME))
ENGINE = InnoDB;



select * from tbcadastro;
select * from tbcalculo;
alter table tbcadastro modify column senha varchar(100);