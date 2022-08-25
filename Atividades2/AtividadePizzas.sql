CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(

id bigint auto_increment primary key,
descricao varchar (255),
tamanho varchar (255),
borda_recheada boolean
);

CREATE TABLE tb_pizzas(
    id bigint auto_increment primary key,
    sabor varchar (255),
    preco decimal (6,2),
    massa varchar (255),
    quantidade int,
    categoria_id bigint,
	
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
    );
    SELECT * FROM tb_categorias;
    
    INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Saldaga", "Brotinho",true);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",false);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Médio",true);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Médio",false);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",true);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",false);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho",true);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Grande",true);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Brotinho",true);
    INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vagana","Brotinho",false);
    
    SELECT * FROM tb_pizzas;
    
    INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Frango C/ Catupiry",30.00,"tradicional",5,1);
    INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Mussarela",32.00,"tradicional",5,2);
    INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Prestigio",50.00,"tradicional",2,8);
    INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Lombo C/ Catupiry",55.99,"tradicional",3,6);
    INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Brocolis C/ Mussarela",45.99,"tradicional",4,9);
    INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Calabresa",48.99,"tradicional",5,5);
    
    SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco DESC;
    
   /*AMBOS FAZEM A MESMA COISA*/
   SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100;
   SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
    
    SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_categorias.id = tb_pizzas.categoria_id;
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_categorias.id = tb_pizzas.categoria_id WHERE descricao LIKE "DOCE";