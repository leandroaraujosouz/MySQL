create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Cosmético",true);
insert tb_categoria (descricao, ativo) values ("Vitamina",true);
insert tb_categoria (descricao, ativo) values ("Remedio",true);
insert tb_categoria (descricao, ativo) values ("bebidas",true);
insert tb_categoria (descricao, ativo) values ("outros",true);

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Shampoo",40.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Vitamina C",10.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Benegripe",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Agua Mineral",5.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Fralda descartavel",60.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Condicionador",30.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Alcool em gel",15.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Paracetamol",20.00,30,3);



select * from tb_produtos where preco > 50;

SELECT *
FROM tb_produtos
WHERE preco >=3 and preco <=60;

SELECT *
FROM tb_produtos
WHERE nome like  "%b%";

select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id where tb_categoria.descricao = "Cosmético";