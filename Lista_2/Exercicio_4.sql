DROP TABLE tb_produtos;
CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
    tipo_de_especie VARCHAR(255),
    qualidade_do_produto VARCHAR(255),
   
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255),
    preco DECIMAL (10, 2),
	peso DECIMAL (10, 2),
	validade DATE,
	categorias_id BIGINT,
    
    PRIMARY KEY(id),
    
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo_de_especie, qualidade_do_produto) VALUES ("Bovina", "Alta");
INSERT INTO tb_categorias (tipo_de_especie, qualidade_do_produto) VALUES ("Bovina", "Barata");
INSERT INTO tb_categorias (tipo_de_especie, qualidade_do_produto) VALUES ("Aves", "Alta");
INSERT INTO tb_categorias (tipo_de_especie, qualidade_do_produto) VALUES ("Aves", "Barata");
INSERT INTO tb_categorias (tipo_de_especie, qualidade_do_produto) VALUES ("Suína", "Alta");
INSERT INTO tb_categorias (tipo_de_especie, qualidade_do_produto) VALUES ("Suína", "Barata");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Coxão mole", 75.00, 2.254, "2022-08-05", 2);
INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Filé Mignon", 170.00, 3.214, "2022-10-27", 1);
INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Coxa e sobrecoxa de Frango", 40.00, 4, "2022-07-26", 3);
INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Pé de galinha", 30.00, 2.120, "2022-08-26", 4);
INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Linguiça", 55.00, 5.500, "2022-12-28", 5);
INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Bisteca", 43.00, 3.154, "2022-12-28", 6);
INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Contra filé", 51.00, 2.578, "2022-11-14", 1);
INSERT INTO tb_produtos (produto, preco, peso, validade, categorias_id) VALUES ("Peito de Frango", 30.00, 2, "2022-07-15", 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 50.00 AND preco < 150.00;

SELECT * FROM tb_produtos WHERE produto LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos  INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos .categorias_id AND tipo_de_especie  = 'Aves';
