CREATE DATABASE cadastro_cliente;

USE cadastro_cliente;

CREATE TABLE cliente(
	id int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    idade int NOT NULL,
    cidade VARCHAR(40) NOT NULL
);

INSERT INTO cliente (nome, idade, cidade) 
VALUES ('Tiago', 41, 'Fortaleza'),
	   ('Pitombeira', 72, 'Limoeiro do Norte'),
       ('Nara', 35, 'Russas'),
       ('Divino', 65, 'Tiangua');