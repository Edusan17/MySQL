CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment primary key,
    nome varchar(50),
    empresa varchar(50),
    cpf varchar(50),
    setor varchar(50),
	salario decimal(10,2)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Giselle","BRQ","000.000.000-00","Adm",2230.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Douglas","BRQ","111.111.111-11","Dev Junior",2800.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Gustavo","BRQ","222.222.222-22","Dba Pleno",6900.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Oscar","BRQ","333.333.333-33","RH",1720.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Ester","BRQ","444.444.444-44","Dev Senior",8760.00);

SELECT id,nome,salario FROM tb_colaboradores WHERE salario > 2000;
SELECT id,nome,salario FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2700.00 WHERE id = 1;