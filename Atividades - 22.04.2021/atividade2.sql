drop database db_pizzaria_legal;
-- criação do banco de dados
create database db_pizzaria_legal;

-- Abrindo o banco de dados para criar as tabelas
use db_pizzaria_legal;

-- criando a tabela categoria
create table tb_categoria(
	id bigint auto_increment,
    tipo_pizza varchar(255) not null,
    tamanho varchar(50) not null,
    catupiry boolean,
    primary key (id)
);

-- criando a tabela de pizza
create table tb_pizza(
	id bigint auto_increment,
    nome varchar(255) not null,
	preco float not null,
    ingredientes varchar(255),
    categoria_id bigint,
    ativo boolean,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

-- populando da tabela categoria
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Doce","Grande",true);
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Doce","Media",true);
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Doce","Grande",false);
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Doce","Media",false);
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Salgada","Grande",true);
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Salgada","Media",true);
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Salgada","Grande",false);
insert tb_categoria(tipo_pizza,tamanho,catupiry) values("Salgada","Media",false);


-- Populando a tabela de pizza
insert tb_pizza(nome,preco,ingredientes,ativo,categoria_id) values ("Pizza de chocolate",35,"1/2kg de farinha, 4 colheres de açucar, 1 colher de sobremesa de sal, 2 ovos, 1/2 fermento de pão,1 xicara de leite, 1 xicara de oleo",true,1);
insert tb_pizza(nome,preco,ingredientes,ativo,categoria_id) values ("Pizza de chocolate",25,"1/3kg de farinha, 2 colheres de açucar, 1/2 colher de sobremesa de sal, 1 ovos, 1/4 fermento de pão,1/2 xicara de leite, 1/2 xicara de oleo",true,2);
insert tb_pizza(nome,preco,ativo,categoria_id) values ("Pizza de calabresa",30,true,5);
insert tb_pizza(nome,preco,ativo,categoria_id) values ("Pizza de calabresa",20,true,6);
insert tb_pizza(nome,preco,ativo,categoria_id) values ("Pizza com banana, doce de leite e canela",25,true,3);
insert tb_pizza(nome,preco,ativo,categoria_id) values ("Pizza com banana, doce de leite e canela",15,true,4);
insert tb_pizza(nome,preco,ativo,categoria_id) values ("Pizza portuguesa",35,true,7);
insert tb_pizza(nome,preco,ativo,categoria_id) values ("Pizza portuguesa",25,true,8);

-- consulta todas pizza com preco acima de 45 reais
select * from tb_pizza where preco > 45;

-- consulta tadas pizza com preço entre 29 e 60 reias
select * from tb_pizza where preco >= 29 and preco <= 60;

-- consulta todas pizzas com a letra c no nome
select * from tb_pizza where nome like  "%c%";

-- consulta todas pizzas cadastrados e sua categoria
select nome,preco as preço, ingredientes, ativo, tb_categoria.tipo_pizza as "Tipo de pizza", tb_categoria.tamanho, tb_categoria.catupiry
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- consulta todas pizzas cadastradas com o tipo categoria doce
select nome,preco as preço, ingredientes, ativo, tb_categoria.tipo_pizza as "Tipo de pizza", tb_categoria.tamanho, tb_categoria.catupiry
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo_pizza = "Doce";