create database db_generation_game_online;
use db_generation_game_online;

create table tb_personagem(
id bigint auto_increment,
nome varchar(50) not null,
ataque bigint default '0',
defesa bigint default '0',
agilidade bigint default '0',
primary key(id)
);

create table tb_classe(
idclasse bigint auto_increment,
classe character(50) not null,
coruniforme enum ('Vermelho', 'Branco', 'Preto'),
primary key (idclasse)
);

alter table tb_personagem
add column pertence bigint;

alter table tb_personagem
add foreign key (pertence)
references tb_classe(idclasse);

insert into tb_classe (idclasse, classe, coruniforme) values
(default, 'Guerreiro', 'Vermelho'),
(default, 'Mago', 'Branco'),
(default, 'Cavaleira', 'Vermelho'),
(default, 'Arqueiro', 'Preto'),
(default, 'Feiticeira', 'Branco');


insert into tb_personagem (id, nome, ataque, defesa, agilidade, pertence) values
(default, 'Esmaga Ossos', '10000', '6000', '3000', '1'),
(default, 'Olho de Águia', '7000', '5000', '8000', '4'),
(default, 'Yeniffer', '8000', '900', '5000', '5'),
(default, 'Voldemort', '10000', '10000', '7000', '2'),
(default, 'Gerald', '9000', '9000', '8000', '3'),
(default, 'Andarilho', '1000', '4000', '100', '2'),
(default, 'Zóio', '80', '400', '70', '4'),
(default, 'Sombra', default, default, default, '3');

select * from tb_personagem 
where ataque > '2000';

select * from tb_personagem
where defesa > '1000' and defesa < '2000';

select * from tb_personagem
where nome like '%c%';

select * from tb_personagem
inner join tb_classe
on tb_personagem.pertence = tb_classe.idclasse;

select tb_personagem.nome, tb_classe.classe from tb_personagem inner join tb_classe
on tb_personagem.pertence = tb_classe.idclasse
where pertence = '1';