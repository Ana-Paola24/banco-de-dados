CREATE DATABASE db_empresarh;
USE db_empresarh;
CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
idade INT,
email VARCHAR (255),
cargo VARCHAR (255) NOT NULL,
salario DECIMAL (10,2),
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, idade, email, cargo, salario) VALUES
("Carlos", 24, "carlos@gmail", "ajudante de rh", 1200.00),
("Larissa", 35, "larissa@gmail", "supervisora de marketing", 5300.00),
("Rafael", 27, "rafael@gmail", "redator", 2400.00);

INSERT INTO tb_colaboradores (nome, idade, cargo, salario) VALUES
("Julia", 17, "jovem aprendiz", 890.00),
("Jose", 21, "estagiario", 1080.00);

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET idade = 19 WHERE id = 4;
UPDATE tb_colaboradores SET cargo = "estagiaria" WHERE id = 4;
UPDATE tb_colaboradores SET salario = 1200.00 WHERE id = 4;
SELECT * FROM tb_colaboradores;

