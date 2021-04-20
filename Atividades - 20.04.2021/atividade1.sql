-- criação do banco de dados
create database db_rh;  

-- usar o banco de dados db_rh
use db_rh;

-- criação da tabela funcionarios
create table tb_funcionario(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario decimal,
cargo varchar(255),
primary key(id)
);

-- populando a tabela
insert tb_funcionario(nome,idade,salario,cargo) values ("leandro",28 ,2400.00 ,"Desenvolvedor Jr");
insert tb_funcionario(nome,idade,salario,cargo) values ("Ana",35 ,10000.00 ,"Desenvolvedor Senior");
insert tb_funcionario(nome,idade,salario,cargo) values ("Pedro",18 ,1500.00 ,"Estagiario");
insert tb_funcionario(nome,idade,salario,cargo) values ("Marcia",40 ,15000.00 ,"Gerente");
insert tb_funcionario(nome,idade,salario,cargo) values ("leonardo",30 ,5500.00 ,"Desenvolvedor Pleno");

-- consulta funcionarios com salario maior que 2000
select * from tb_funcionario where salario > 2000;

-- consulta funcionarios com salario menor que 2000
select * from tb_funcionario where salario < 2000;

-- alterando dados da tabela
update tb_funcionario set nome = "Pedro Henrique"  where id = 3;