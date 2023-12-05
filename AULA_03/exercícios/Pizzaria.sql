DROP DATABASE db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
tipo_massa varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("Pizza Salgada"),
("Pizza Doce"),
("Refrigerante"),
("Cerveja"),
("outros");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal(4, 2),
descricao TEXT, 
vegetariano BOOLEAN,

categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id ) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, descricao, vegetariano, categoria_id)
VALUES ("Pizza Queijo", 43.00, "muçarela com fatias de tomate.", true, 1),
("Pizza 3 Queijos", 52.00, "parmesão, provolone e muçarela", true, 1),
("Provolone", 49.00, "provolone com fatias de tomate", true, 1),
("Toscana", 43.00, "calabresa fatiada com cobertura de mussarela", false, 1),
("Brigadeiro", 48.00, "chocolate derretido coberto com chocolate granulado", true, 2),
("Prestígio", 55.00, "chocolate derretido coberto com chocolate granulado e coco ralado", true, 1),
("Coca-Cola", 12.00, "garrafa 2L", true, 3),
("Heineken", 14.00, "garrafa 1L", true, 4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 and 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, preco, tb_pizzas.descricao, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 2;


