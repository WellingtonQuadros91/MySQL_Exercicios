-- comando para criar um banco de dados
CREATE DATABASE db_rhgeneration; 

-- indica o banco de dados a ser utilizado/manipulado
USE db_rhgeneration;

CREATE TABLE tb_funcionarios(

	id BIGINT auto_increment,
    nome VARCHAR (255),
    salario DECIMAL (9,2),    /*Número de casa que queremos que ocupe e casas após a vírgula (9,2) 9 casas decimais e 2 após a vírgula*/
	setor VARCHAR (255),
	matricula INT, 
    
    PRIMARY KEY(id)
);

-- trás todos os dados da tabela de funcionários
SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula) VALUES("Wan", 10000.60, "Tecnologia", 03);

UPDATE tb_funcionarios
SET nome = "Marcelo", salario = 100000.00, setor = "Desenvolvimento"  
WHERE id = 2;

DELETE FROM tb_funcionarios 
WHERE ID = 3;

UPDATE tb_funcionarios
SET matricula = 3
WHERE id =2;

