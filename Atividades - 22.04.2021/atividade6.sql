drop database db_cursoDaMinhaVida;
create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Corel",true);
insert tb_categoria (descricao, ativo) values ("Photoshop",true);
insert tb_categoria (descricao, ativo) values ("Java",true);
insert tb_categoria (descricao, ativo) values ("SQL",true);
insert tb_categoria (descricao, ativo) values ("Microsoft Office",true);
insert tb_categoria (descricao, ativo) values ("outros",true);


create table tb_curso (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
Duracao int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_curso (nome,preco, duracao, categoria_id) values ("CorelDraw 21 - Avançado",220.90,45,1);
insert tb_curso (nome,preco, duracao, categoria_id) values ("Java Completo",189.90,50,3);
insert tb_curso (nome,preco, duracao, categoria_id) values ("Photoshop - Avançado",180.00,45,2);
insert tb_curso (nome,preco, duracao, categoria_id) values ("Photoshop - Básico",80.90,15,2);
insert tb_curso (nome,preco, duracao, categoria_id) values ("MySQL Completo",200.90,30,4);
insert tb_curso (nome,preco, duracao, categoria_id) values ("Excel - Avançado",120.90,45,5);
insert tb_curso (nome,preco, duracao, categoria_id) values ("Word Completo",50.90,15,5);
insert tb_curso (nome,preco, duracao, categoria_id) values ("Java basico",50.90,10,3);


select * from tb_curso where preco > 50;

SELECT *
FROM tb_curso
WHERE preco >=3 and preco <=60;

SELECT *
FROM tb_curso
WHERE nome like  "%j%";

select nome, preco, duracao as Duração, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_curso inner join tb_categoria on  tb_categoria.id = tb_curso.categoria_id;
 
 select nome, preco, duracao as Duração, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_curso inner join tb_categoria on  tb_categoria.id = tb_curso.categoria_id where tb_categoria.descricao = "Java";