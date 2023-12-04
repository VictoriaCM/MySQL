CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cargo varchar(255) NOT NULL,
data_nascimento date,
salario decimal NOT NULL,
PRIMARY KEY (id));

INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, salario)
VALUES ("Ana", "Desenvolvedor Jr", "2000-12-18", 4000.00),
("Carlos", "Desenvolvedor Jr", "1995-05-10", 4250.00),
("João", "Desenvolvedor Jr", "1998-10-11", 4250.00),
("Alan", "Desenvolvedor Jr", "1990-08-09", 7000.00),
("Joice", "Desenvolvedor Jr", "1999-01-02", 7000.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1980.00 WHERE id = 2;



