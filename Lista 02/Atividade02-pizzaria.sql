create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
idcategoria bigint auto_increment,
tamanho enum('P', 'M', 'G'),
massa enum('Fina', 'Grossa'),
primary key(idcategoria)
);

create table tb_pizza(
idpizza bigint auto_increment,
nome varchar(50) not null,
sabor varchar(50) not null,
borda boolean default '0',
preco decimal(5,2),
categoria bigint,
primary key(idpizza),
foreign key(categoria) references tb_categoria(idcategoria)
);

insert into tb_categoria values
(default, 'P', 'Fina'),
(default, 'M', 'Fina'),
(default, 'G', 'Fina'),
(default, 'P', 'Grossa'),
(default, 'M', 'Grossa'),
(default, 'G', 'Grossa');

insert into tb_pizza values
(default, 'Zeus', 'Calabresa', '1', '29.90', '5'),
(default, 'Hera', 'Portuguesa', '0', '29.90', '1'),
(default, 'Poseidon', 'Marguerita', '1', '35.90', '2'),
(default, 'Ártemis', 'Frango com catupiry', '1', '35.90', '4'),
(default, 'Apolo', 'Muçarela', '1', '29.90', '4'),
(default, 'Afrodite', 'Napolitana', '0', '32.90', '3'),
(default, 'Ares', 'Brigadeiro', '0', '32.90', '5'),
(default, 'Hefesto', 'Romeu e Julieta', '0', '35.90', '4');

select * from tb_pizza
where preco > '45';

select * from tb_pizza
where preco > '29' and preco < '60';

select * from tb_pizza
where sabor like '%C%';

select tb_pizza.nome, tb_pizza.sabor, tb_categoria.tamanho, tb_categoria.massa from tb_pizza
inner join tb_categoria
on tb_pizza.categoria = tb_categoria.idcategoria
order by tb_pizza.idpizza;

select * from tb_pizza
inner join tb_categoria
on tb_pizza.categoria = tb_categoria.idcategoria
where tb_categoria.tamanho = 'M';
