-- criação do banco de dados
create database db_game_online;

-- Abrindo o banco de dados para criar as tabelas
use db_game_online;

-- criando a tabela classe
create table tb_classe(
	id bigint auto_increment,
    tipo_classe varchar(255) not null,
    raca varchar(255) not null,
    especialidade varchar(255) not null,
    primary key (id)
);

-- criando a tabela de personagem
create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    dano_fisico int not null,
    dano_magico int not null,
    defesa int not null,
    pontos_de_vida int not null,
    classe_id bigint,
    primary key(id),
    foreign key(classe_id) references tb_classe(id)
);

-- populando da tabela classe
insert tb_classe(tipo_classe,raca,especialidade) values("Guerreiro","Humano","Espada");
insert tb_classe(tipo_classe,raca,especialidade) values("Assassino","Duende","Adagas");
insert tb_classe(tipo_classe,raca,especialidade) values("Xamã","Ogro","Magia Negra");
insert tb_classe(tipo_classe,raca,especialidade) values("Clérigo","Elfo","Magia Sagrada");
insert tb_classe(tipo_classe,raca,especialidade) values("Barbaro","Gigante","Machado");

-- Populando a tabela de personagens
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("BeoWulf",3000,0,10000,15000,1);
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("Ragnar",4000,0,7000,10000,1);
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("Arac",10000,0,3000,7000,2);
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("groot",600,4000,7000,25000,3);
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("Hannark",300,4500,9000,15000,3);
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("yusu",200,3000,7000,30000,4);
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("toguro",10000,0,10000,15000,5);
insert tb_personagem(nome,dano_fisico,dano_magico,defesa,pontos_de_vida,classe_id) values ("Dante",9000,5000,8000,45000,1);

-- consulta todos personagens com dano fisico acima de 2000
select * from tb_personagem where dano_fisico > 2000;

-- consulta todos personagens com dano magico acima de 2000
select * from tb_personagem where dano_magico > 2000;

-- consulta todos personagem com a letra c no nome
select * from tb_personagem where nome like  "%c%";

-- consulta todos personagens cadastrados e sua classe
select nome, dano_fisico as "Dano Fisico", dano_magico as "Dano Magico", defesa, pontos_de_vida as "Pontos de Vida", tb_classe.tipo_classe as "Tipo de Classe", tb_classe.raca as Raça, tb_classe.especialidade
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- consulta todos personagens da classe guerreiro
select nome, dano_fisico as "Dano Fisico", dano_magico as "Dano Magico", defesa, pontos_de_vida as "Pontos de Vida", tb_classe.tipo_classe as "Tipo de Classe", tb_classe.raca as Raça, tb_classe.especialidade
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.tipo_classe = "Guerreiro";