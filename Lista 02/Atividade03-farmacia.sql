create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
idcategoria bigint auto_increment,
atuacao varchar(50) not null,
generio boolean default '0',
antibiotico boolean default '0',
primary key (idcategoria)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
marca varchar(50),
quantidade int default '0',
preco decimal(5,2),
categoria bigint,
primary key(id),
foreign key(categoria) references tb_categoria(idcategoria)
);

insert into tb_categoria values
(default, 'dor muscular', '1', '0'),
(default, 'dor de cabeça', '0', '0'),
(default, 'náuseas  e enjoos', '0', '1'),
(default, 'desconforto abinominal', '0', '1'),
(default, 'alergico', '1', '0');

insert into tb_produto values
(default, 'Paracetamol', 'Tylenol', '50', '10.50', '2'),
(default, 'Dipirona', 'Novalgina', '100', '15.60', '2'),
(default, 'Ibuprofeno', 'Advil', default, '20.50', '1'),
(default, 'Bromoprida', '', '20', '35.00', '3'),
(default, 'Loratamed', '', '30', '2.35', '5'),
(default, 'Cimetidina', '', '2', '26.40', '4'),
(default, 'Naproxeno', 'Flanax', '32', '12.30', '3'),
(default, 'Cloridrato de Fexofenadina', '', '150', '17.50', '5');

select * from tb_produto
where preco > '50';

select * from tb_produto
where preco > '3' and preco < '60';

select * from tb_produto
where nome like '%B%';

select tb_produto.nome, tb_categoria.atuacao from tb_produto
inner join tb_categoria
on tb_produto.categoria = tb_categoria.idcategoria;

select * from tb_produto
inner join tb_categoria
on tb_produto.categoria = tb_categoria.idcategoria
where generio = '1';