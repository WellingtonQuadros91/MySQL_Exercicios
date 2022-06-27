DROP TABLE tb_produtos;
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
	quantidade INT,
    validade DATE,
	categorias_id BIGINT,
    
    PRIMARY KEY(id),
    
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Genérico", "Cartão");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Genérico", "Dinheiro");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Manipulado", "Cartão");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Manipulado", "Dinheiro");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Cosmético", "Cartão");
INSERT INTO tb_categorias (tipo_de_produto, forma_de_pagamento) VALUES ("Cosmético", "Dinheiro");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Amoxilina", 45.00, 5, "2024-08-05", 1);
INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Dipirona", 22.00, 2, "2023-03-27", 2);
INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Creme para o rosto", 62.00, 1, "2022-07-26", 3);
INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Pomada", 70.00, 2, "2022-08-26", 4);
INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Shampoo", 35.00, 2, "2023-12-28", 5);
INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Condicionador", 43.00, 3, "2023-12-28", 6);
INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Dorflex", 15.00, 2, "2024-02-14", 1);
INSERT INTO tb_produtos (produto, preco, quantidade, validade, categorias_id) VALUES ("Perfume", 70.00, 1, "2025-06-15", 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND preco < 60.00;

SELECT * FROM tb_produtos WHERE produto LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos  INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos .categorias_id AND tipo_de_produto  = 'Cosmético';


