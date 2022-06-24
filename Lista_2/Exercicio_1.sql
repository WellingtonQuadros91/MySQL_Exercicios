CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255),
    tipo_de_dano VARCHAR(255),
   
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    ataque INT,
    defesa INT,
    vida INT,
	classes_id BIGINT,
    
    PRIMARY KEY(id),
    
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (nome_classe, tipo_de_dano) VALUES ("AdCarry", "Físico");
INSERT INTO tb_classes (nome_classe, tipo_de_dano) VALUES ("Suporte", "Físico");
INSERT INTO tb_classes (nome_classe, tipo_de_dano) VALUES ("MidLaner", "Mágico");
INSERT INTO tb_classes (nome_classe, tipo_de_dano) VALUES ("TopLaner", "Mágico");
INSERT INTO tb_classes (nome_classe, tipo_de_dano) VALUES ("Caçador", "Físico");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Draven", 5000, 1500, 1800, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Sett", 2000, 3000, 3000, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Oriana", 5000, 1500, 1800, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Gwen", 6000, 2000, 2500, 4);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Viego", 7000, 3000, 2800, 5);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Veigar", 8000, 1800, 1600, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Mordekaiser", 5000, 2200, 1900, 4);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, classes_id) VALUES ("Kalista", 4000, 1350, 1800, 1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa > 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%K%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id AND nome_classe = 'AdCarry';
