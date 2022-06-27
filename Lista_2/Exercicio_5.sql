DROP TABLE tb_categorias;

CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
    tipo_de_produto VARCHAR(255),
    forma_de_pagamento VARCHAR(255),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255),
    preco DECIMAL (10, 2),
	estoque DECIMAL (10, 2),
	dia_da_compra DATE,
	categorias_id BIGINT,
    
    PRIMARY KEY(id),
    
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
    );
    
   SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Eletrico", "Cartão");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Eletrico", "Dinheiro");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Construção", "Cartão");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Construção", "Dinheiro");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Hidraulico", "Cartão");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Hidraulico", "Dinheiro");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Chuveiro", 75.00, 50, "2022-08-05", 1);
INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Lampada de LED", 24.00, 100, "2022-10-27", 2);
INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Saco de Cimento 50 KG", 40.00, 70, "2022-07-26", 3);
INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Cano PVC", 35.00, 150, "2022-08-26", 5);
INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Válvula de metal para poço1.1/2", 110.00, 150, "2022-12-28", 6);
INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Massa Corrida", 93.00, 205, "2022-12-28", 4);
INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Caixa d'água", 369.00, 27, "2022-11-14", 5);
INSERT INTO tb_produtos (produto, preco, estoque, dia_da_compra, categorias_id) VALUES ("Cabo de Energia 750v 4mm Flexicom Antichama com 100 Metros Preto", 350.00, 130, "2022-07-15", 1);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco > 70.00 AND preco < 150.00;

SELECT * FROM tb_produtos WHERE produto LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos  INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos .categorias_id AND tipo_de_produto  = 'Hidraulico';