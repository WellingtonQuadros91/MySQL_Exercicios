CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo_pizza VARCHAR(255),
    borda_recheada VARCHAR(10),
   
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255),
    preco DECIMAL (10, 2),
	tamanho VARCHAR(255),
    massa VARCHAR(255),
	categorias_id BIGINT,
    
    PRIMARY KEY(id),
    
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo_pizza, borda_recheada) VALUES ("Salgada", "Sim");
INSERT INTO tb_categorias (tipo_pizza, borda_recheada) VALUES ("Salgada", "Não");
INSERT INTO tb_categorias (tipo_pizza, borda_recheada) VALUES ("Doce", "Sim");
INSERT INTO tb_categorias (tipo_pizza, borda_recheada) VALUES ("Doce", "Não");
INSERT INTO tb_categorias (tipo_pizza, borda_recheada) VALUES ("Meio a meio", "Sim");
INSERT INTO tb_categorias (tipo_pizza, borda_recheada) VALUES ("Meio a meio", "Não");

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Calabresa", 60.00, "Grande", "Fina", 1);
INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Mussarela", 62.00, "Grande", "Grossa", 2);
INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Romeu e Julieta", 60.00, "Média", "Fina", 4);
INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Prestígio", 40.00, "Brotinho", "Fina", 3);
INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Marguerita", 65.00, "Grande", "Fina", 1);
INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Meia calabresa e Meia mussarela", 43.00, "Brotinho", "Grossa", 5);
INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Meia frango com catupiry e Meia Atum", 68.00, "Media", "Fina", 6);
INSERT INTO tb_pizzas (sabor, preco, tamanho, massa, categorias_id) VALUES ("Calabresa", 41.00, "Brotinho", "Fina", 2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id AND tipo_pizza = 'Doce';