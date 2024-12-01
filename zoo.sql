CREATE DATABASE zoo;
USE zoo;
show tables;
select *from especie;
select *from adm;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone VARCHAR(15) NOT NULL UNIQUE,
    local_trabalho VARCHAR(255),
    senha varchar(100)
);
CREATE TABLE adm(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha varchar(100)
);
SELECT * FROM adm WHERE nome='Administrador' AND senha='6565';

insert into adm(nome, senha)
values('Administrador', '6565');

create table Especie(
    id int auto_increment primary key,
	nome varchar(50) unique,
    grupo varchar(50),
    dataAquisicao datetime,
    numeroAnimal int,
    numeroFemea int,
    pesoMax decimal(10, 2),
    idadeMax int,
    dataSexo varchar(50),
    foto varchar(100)
);
CREATE TABLE sugestoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sugestao TEXT NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from sugestoes;
select * from especie;

delete from especie where id= 18;
UPDATE especie SET numeroFemea =30, numeroAnimal=50 WHERE id = 18;