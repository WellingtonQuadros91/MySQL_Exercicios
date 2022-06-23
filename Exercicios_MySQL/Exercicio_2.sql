CREATE DATABASE db_generation_eCommerce; 

USE db_generation_eCommerce;

CREATE TABLE tb_eCommerce(

	idProduto BIGINT auto_increment,
    nomeProduto VARCHAR(255),
    valor DECIMAL (9, 2),
    estoque INT,
    pesoProduto DECIMAL (9, 2),
    
    PRIMARY KEY(idProduto)
);

SELECT * FROM tb_eCommerce;

SELECT * FROM tb_eCommerce WHERE estoque > 500;
SELECT * FROM tb_eCommerce WHERE estoque < 500;

INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Caderno", 20.00, 300, 0.548);
INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Caneta", 2.00, 650, 0.06);
INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Lapís", 1.00, 620, 0.05);
INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Lapiseira", 20.00, 350, 0.0750);
INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Régua", 5.00, 550, 0.0658);
INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Apontador", 2.00, 510, 0.0530);
INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Borracha ", 2.00, 450, 0.0528);
INSERT INTO tb_eCommerce(nomeProduto, valor, estoque, pesoProduto) VALUES ("Pacote de folhas sulfite (100 folhas A4)", 8.00, 150, 0.075);

DELETE FROM tb_eCommerce 
WHERE idProduto = 2;

UPDATE tb_eCommerce
SET estoque = 550, valor = 1.50
WHERE idProduto = 5;

UPDATE tb_eCommerce
SET estoque = 520, valor = 15.50
WHERE idProduto = 6;

 

