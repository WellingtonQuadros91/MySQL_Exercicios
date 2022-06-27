DROP TABLE tb_categorias;
CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
	linguagem VARCHAR(255),
    grau_de_dificuldade VARCHAR(255),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    preco DECIMAL (10, 2),
	modo_de_Aula VARCHAR(255),
	professor VARCHAR(255),
	categorias_id BIGINT,
    
    PRIMARY KEY(id),
    
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
    );
    
     SELECT * FROM tb_categorias;
    
INSERT INTO tb_categorias (linguagem, grau_de_dificuldade) VALUES ("JAVA", "Iniciante");
INSERT INTO tb_categorias (linguagem, grau_de_dificuldade) VALUES ("JAVA", "Intermediário");
INSERT INTO tb_categorias (linguagem, grau_de_dificuldade) VALUES ("JAVA", "Avançado");
INSERT INTO tb_categorias (linguagem, grau_de_dificuldade) VALUES ("HTML", "Iniciante");
INSERT INTO tb_categorias (linguagem, grau_de_dificuldade) VALUES ("HTML", "Intermediário");
INSERT INTO tb_categorias (linguagem, grau_de_dificuldade) VALUES ("HTML", "Avançado");
INSERT INTO tb_categorias (linguagem, grau_de_dificuldade) VALUES ("HTML e JAVA", "Avançado");


SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, preco, modo_de_Aula, professor, categorias_id) VALUES ("BACK-END I", 450.00, "Distância", "Antônio", 1);
INSERT INTO tb_produtos (nome, preco, modo_de_Aula, professor, categorias_id) VALUES ("BACK-END II", 550.00, "Distância", "Leonardo", 2);
INSERT INTO tb_produtos (nome, preco, modo_de_Aula, professor, categorias_id) VALUES ("BACK-END III", 650.00, "Distância", "Alanis", 3);
INSERT INTO tb_produtos (nome, preco, modo_de_Aula, professor, categorias_id) VALUES ("FRONT-END I", 450.00, "Distância", "Camila", 4);
INSERT INTO tb_produtos (nome, preco, modo_de_Aula, professor, categorias_id) VALUES ("FRONT-END II", 550.00, "Distância", "Jéssica", 5);
INSERT INTO tb_produtos (nome, preco, modo_de_Aula, professor, categorias_id) VALUES ("FRONT-END III", 650.00, "Distância", "Jeferson", 6);
INSERT INTO tb_produtos (nome, preco, modo_de_Aula, professor, categorias_id) VALUES ("FULL STACK", 1200.00, "Distância", "Gustavo", 7);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco > 600.00 AND preco < 1000.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%b%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos  INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos .categorias_id AND linguagem  = 'Java';


