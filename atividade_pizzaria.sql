CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR (200) NOT NULL,
descricao VARCHAR (255),
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
nome_sabor VARCHAR (255) NOT NULL,
tamanho VARCHAR (100) NOT NULL,
preco DECIMAL (5,2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (nome_categoria, descricao) VALUES
("Pizza Tradicional", "Sabores tradicionais"),
("Pizza Doce", "Pizzas doces"),
("Pizza Especial", "Adição de ingredientes especiais"),
("Pizza Promocional", "Sabores promociaonais do trimestre"),
("Pizza Vegana", "Ausencia de qualquer ingrediente derivado animal");

INSERT INTO tb_pizzas (nome_sabor, tamanho, preco, categoria_id ) VALUES
("Mussarela", "Médio", 35.00, 1),
("Calabresa", "Médio", 55.00, 1),
("Portuguesa", "Broto", 48.00, 1),
("Romeu e Julieta", "Grande", 99.00, 2),
("Prestigio", "Broto", 60.00, 2),
("Caprese", "Grande", 135.00, 3),
("Milho", "Médio", 70.00, 4),
("Marguerita", "Médio", 89.00, 5);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome_sabor LIKE "%m%";

SELECT nome_sabor AS sabor, tamanho, preco, tb_categoria.nome_categoria AS categoria
FROM tb_pizzas INNER JOIN tb_categoria 
ON tb_pizzas.categoria_id = tb_categoria.id;

SELECT nome_sabor AS sabor, tamanho, preco, tb_categoria.nome_categoria AS categoria
FROM tb_pizzas INNER JOIN tb_categoria 
ON tb_categoria.id = tb_pizzas.categoria_id
WHERE tb_categoria.id=2;