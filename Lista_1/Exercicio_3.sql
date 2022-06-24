CREATE DATABASE db_generation_escola;

USE db_generation_escola;

CREATE TABLE tb_escola(

	idAluno BIGINT auto_increment,
    nomeAluno VARCHAR(255),
    nota DECIMAL(9, 2),
    faltas INT,
    disciplina VARCHAR(255),
    
    PRIMARY KEY(idAluno)
);

SELECT * FROM tb_escola;

SELECT * FROM tb_escola WHERE nota > 7.0;
SELECT * FROM tb_escola WHERE nota < 7.0;

INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Maria Sousa", 8.00, 0, "Biologia");
INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Maria Silva", 6.00, 5, "Química");
INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Laura Quadros", 10.00, 3, "Matemática");
INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Gabriel Toledo", 9.00, 6, "Física");
INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Fernando Alvarenga", 10.00, 0, "Inglês");
INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Lúcia Sousa", 5.00, 0, "Artes");
INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Luísa Sousa", 6.00, 0, "Educação Física");
INSERT INTO tb_escola(nomeAluno, nota, faltas, disciplina) VALUES ("Antônio Oliveira", 4.00, 0, "Filosofia");

UPDATE tb_escola
SET nota = 6.00, faltas = 2
WHERE idAluno = 1 ;

UPDATE tb_escola
SET nota = 8.00, faltas = 3
WHERE idAluno = 2 ;

UPDATE tb_escola
SET nota = 6.00, faltas = 1
WHERE idAluno = 8 ;

