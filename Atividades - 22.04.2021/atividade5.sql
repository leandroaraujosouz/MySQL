create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("maquinas",true);
insert tb_categoria (descricao, ativo) values ("cerâmica",true);
insert tb_categoria (descricao, ativo) values ("hidráulica",true);
insert tb_categoria (descricao, ativo) values ("ferramentas",true);
insert tb_categoria (descricao, ativo) values ("tintas",true);
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

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Martelo",59.90,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Furadeira",199.90,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cimento",30.00,30,6);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Tinta suvinil",349.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Piso laminado 3m²",350.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("cano Marrom PVC 25mm tigre",16.90,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Serra Mármore Makita",380.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Areia Media 1m²",96.00,30,6);


select * from tb_produtos where preco > 50;

SELECT *
FROM tb_produtos
WHERE preco >=3 and preco <=60;

SELECT *
FROM tb_produtos
WHERE nome like  "%c%";

select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id where tb_categoria.descricao = "Hidráulica";