CREATE DATABASE db_farmacia;

USE db_farmacia;

CREATE TABLE db_categorias(
id bigint auto_increment primary key,
original VARCHAR (255),
receita VARCHAR (255)
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
nome VARCHAR(255),
marca VARCHAR(255),
para VARCHAR(255),
preco DECIMAL(6,2),
categoria_id bigint,
 FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);
SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(originaal,receita)VALUES("SIM","SIM");
INSERT INTO tb_categorias(originaal,receita)VALUES("SIM","NÃO");
INSERT INTO tb_categorias(originaal,receita)VALUES("NÃO","SIM");
INSERT INTO tb_categorias(originaal,receita)VALUES("NÃO","NÃO");

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome,marca,para,preco,categoria.id)VALUES("Ipubrofeno","Ibupril","Anti-inflamatório","18.00",2);
INSERT INTO tb_produtos(nome,marca,para,preco,categoria.id)VALUES("Doril","Hypera","Dores de cabeça","15.00",3);
INSERT INTO tb_produtos(nome,marca,para,preco,categoria.id)VALUES("Amytril","Cristálina","Depressão","56.00",2);
INSERT INTO tb_produtos(nome,marca,para,preco,categoria.id)VALUES("Amytril","Cristálina","Depressão","48.00",1);
INSERT INTO tb_produtos(nome,marca,para,preco,categoria.id)VALUES("Dipirona","Prati","Dor de cabeça,dor muscular","10.00",4);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco > 5 AND preco < 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_categorias INNER JOIN tb_produtos 
ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_categorias INNER JOIN tb_produtos 
ON tb_categorias.id = tb_produtos.categoria_id WHERE original LIKE "SIM";





