CREATE DATABASE db_rh ;
USE db_rh;
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	nascimento DATE,
	funcao VARCHAR(255) NOT NULL,
	salario DECIMAL(8,2),
	PRIMARY KEY(id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, nascimento, funcao,salario)
VALUES ("João Neves", "1983-04-01", "Auxiliar de escritório", 1900),
("Maria Clara Nunes", "1995-12-21", "Desenvolvedora Backend", 10000),
("Marco Aurelio", "1970-10-08", "Engenheiro de Software", 15000),
("Charles Bukowski", "1991-05-07", "UX Designer", 6000),
("Mike Tyson", "1978-03-12", "Zelador", 1500);


SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET funcao = "Desennvolvedora Backend Senior" WHERE id = 2;
UPDATE tb_colaboradores SET salario = 30000 WHERE id = 2;