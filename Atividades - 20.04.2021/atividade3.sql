create database db_escola;

use db_escola;

create table tb_aluno(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
media float not null,
turma varchar(255) not null,
primary key(id)
);

insert tb_aluno(nome, idade, media, turma) values ("João", 10, 6.69, "Turma 1");
insert tb_aluno(nome, idade, media, turma) values ("Ana", 9, 5.55, "Turma 2");
insert tb_aluno(nome, idade, media, turma) values ("Vitor", 12, 7, "Turma 3");
insert tb_aluno(nome, idade, media, turma) values ("Mateus", 8, 10, "Turma 4");
insert tb_aluno(nome, idade, media, turma) values ("Hugo", 10, 9, "Turma 1");
insert tb_aluno(nome, idade, media, turma) values ("Maria", 9, 7, "Turma 2");
insert tb_aluno(nome, idade, media, turma) values ("Gabriela", 12, 7, "Turma 3");
insert tb_aluno(nome, idade, media, turma) values ("Luiz", 8, 5, "Turma 4");


select * from tb_aluno where media > 7;

select * from tb_aluno where media < 7;

update tb_aluno set media = 8 where id = 3;