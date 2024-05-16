CREATE DATABASE db_escola ;
USE db_escola;
CREATE TABLE tb_alunos(
	matricula BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	nascimento DATE,
    turma VARCHAR(255),
	nota decimal(4,2) NOT NULL,
	PRIMARY KEY(matricula)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome, nascimento, turma, nota)
VALUES ("Cris Cornell","1996-12-04","Java 74", 7.4),
("Ozzy Ousborn","1985-05-30","Java 74", 10),
("Renato Russo","1979-01-07","Java 74", 3.5),
("Corey Taylor","2000-10-22","Java 72", 9.5),
("David Gilmour","1979-03-04","Java 71", 10),
("Roger Waters","2002-04-09","Java 74", 7.5),
("Leo Ramos","1999-05-06","Java 72", 10),
("Dave Groul","1989-02-02","Java 73", 10);


SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 3 WHERE matricula = 6;