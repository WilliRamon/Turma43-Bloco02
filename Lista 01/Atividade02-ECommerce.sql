create database db_estoque;

create table tb_produtos(
id bigint auto_increment,
nome varchar(50) not null,
marca varchar(50),
preco decimal(6,2) not null,
quantidade int,
primary key (id)
);

insert into tb_produtos values
(default, 'Abajur', 'Luz e Dia','105.90', '5'),
(default, 'Lâmpada 15W', 'lorenzetti', '18.50', '40'),
(default, 'Chuveiro', 'lorenzetti', '79.80', '4'),
(default, 'Fita Isolante - 5m', '3M', '2.50', '10'),
(default, 'Painel de Led', 'Solar', '37.90', '20'),
(default, 'Pendente', 'Sciaza', '39.90', '5'),
(default, 'Rolo de fio 2.5mm', 'Sil', '208.50', '6'),
(default, 'Disjuntor - 16A', 'Steck', '20.50', '20');

select * from tb_produtos where preco > '500';

select * from tb_produtos where preco < '500';

update tb_produtos
set nome = 'Disjuntor - 1P 16A'
where id = '8';