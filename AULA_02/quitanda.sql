-- Criar o Banco de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 100, "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã", 100, "2023-12-18", 11.00),
("laranja", 100, "2023-12-10", 15.00),
("banana", 100, "2023-12-15", 11.90),
("uva", 100, "2023-12-09", 30.00),
("melancia", 100, "2023-12-23", 20.00);

SELECT * FROM tb_produtos;


-- 0000.00
ALTER TABLE tb_produtos MODIFY PRECO DECIMAL (6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE tb_produtos ADD atributos varchar(255);

ALTER TABLE tb_produtos DROP atributos;

ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

SELECT nome_produto, preco FROM Tb_produtos;

DELETE FROM tb_produtos WHERE id = 3;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco > 15.00;

SELECT * FROM tb_produtos WHERE preco > 10.00 OR nome_produto = "maçã";

SELECT * FROM tb_produtos WHERE NOT id = 1;

SELECT nome_produto, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço 
FROM tb_produtos;


INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã", 100, "2023-12-18", 11.00);
