-- criação do banco de dados
create database db_ecommerce;

-- usar o banco de dados db_rh
use db_ecommerce;

-- criação da tabela Produtos
create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
preco decimal not null,
marca varchar(255),
primary key(id)
);

-- populando a tabela
insert tb_produto(nome, descricao, preco, marca) values ("Tenis", "preto tamanho 42", 300.00, "Nike");
insert tb_produto(nome,preco) values ("Camiseta",50.00);
insert tb_produto(nome,preco,marca) values ("Calça",300.00 ,"Fatal Surf");
insert tb_produto(nome,descricao,preco,marca) values ("Tenis","Branco tamanho 38" ,250.00 ,"Olympicus");
insert tb_produto(nome,preco) values ("Short",30.00);
insert tb_produto(nome,preco,marca) values ("Blusa",150.00 ,"Pressão Total");
insert tb_produto(nome,descricao,preco,marca) values ("Sandália","Rosa tamanho 36" ,150.00 ,"Melissa");
insert tb_produto(nome,preco) values ("Saia",70.00);

-- consulta de produtos com valor maior do que 500
select * from tb_produto where preco > 500;

-- consulta de produtos com valor menor do que 500
select * from tb_produto where preco < 500;

-- atualizar cadastro
update tb_produto set descricao = "Vermelha tamanho M" where id = 2;