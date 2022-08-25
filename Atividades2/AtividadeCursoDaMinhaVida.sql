CREATE DATABASE db_cursos_da_minha_vida;
USE db_cursos_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
area CHAR(255), 
dificuldade CHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome CHAR(255),
valor DOUBLE,
professor CHAR(255),
duracao INT,
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

/*VISUALIZAÇÃO*/
SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

INSERT INTO tb_categorias(area,dificuldade) VALUES ("HUMANAS","MÉDIA");
INSERT INTO tb_categorias(area,dificuldade) VALUES ("BIOLÓGICAS","BAIXA");
INSERT INTO tb_categorias(area,dificuldade) VALUES ("EXATAS","MÉDIA");
INSERT INTO tb_categorias(area,dificuldade) VALUES ("EXATAS","GRANDE");
INSERT INTO tb_categorias(area,dificuldade) VALUES ("TECNÓLOGO","MÉDIA");

INSERT INTO tb_cursos(nome,valor,professor,duracao,categoria_id) VALUES ("JAVA",0.00,"GEANDRO",3,5);
INSERT INTO tb_cursos(nome,valor,professor,duracao,categoria_id) VALUES ("LEITURA",200.00,"AIMÉE",1,1);
INSERT INTO tb_cursos(nome,valor,professor,duracao,categoria_id) VALUES ("PLANTAÇÃO",400.00,"JEFF",6,2);
INSERT INTO tb_cursos(nome,valor,professor,duracao,categoria_id) VALUES ("AERONAUTICA",10000.00,"PAULA",53,4);
INSERT INTO tb_cursos(nome,valor,professor,duracao,categoria_id) VALUES ("LOGICA",150.00,"PRISCILA",2,3);
INSERT INTO tb_cursos(nome,valor,professor,duracao,categoria_id) VALUES ("VETERINARIA",130000.00,"ROBERTA",48,4);

SELECT * FROM tb_cursos WHERE valor > 500;
SELECT * FROM tb_cursos WHERE valor > 600 AND valor < 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_categorias INNER JOIN tb_cursos 
ON tb_categorias.id = tb_cursos.categoria_id;
SELECT * FROM tb_categorias INNER JOIN tb_cursos 
ON tb_categorias.id = tb_cursos.categoria_id WHERE area LIKE "EXATAS";
