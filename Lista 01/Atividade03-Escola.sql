create database db_registros;

create table tb_alunos(
ra bigint auto_increment,
nome varchar(50) not null,
turma varchar(10) not null,
notaFinal decimal(4,2),
totMat int,
primary key(ra)
);

insert into tb_alunos values
(default, 'Willi', 'Turma 43', '10', '5'),
(default, 'Ramon', 'Turma 44', '9.5', '5'),
(default, 'Tamiris', 'Turma 43', '5', '6'),
(default, 'Nilton', 'Turma 43', '4', '4'),
(default, 'Luzilene', 'Turma 43', '10', '6'),
(default, 'Leônidas', 'Turma 44', '2', '4'),
(default, 'Ariane', 'Turma 44', '7', '4'),
(default, 'Ariadna', 'Turma 43', '8', '6');

select * from tb_alunos where notaFinal > 7;

select * from tb_alunos where notaFinal <= 7;

update tb_alunos 
set turma = 'Turma 44'
where ra = '3';

select * from tb_alunos;