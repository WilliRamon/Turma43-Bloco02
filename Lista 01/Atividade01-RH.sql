create database quadroFuncionarios;

create table funcionarios(
cpf bigint not null,
nome varchar(50) not null,
nascimento date,
cargo varchar(50) not null,
salario decimal(10, 2),
primary key(cpf)
);

insert into funcionarios
(cpf, nome, nascimento, cargo, salario)
values
('12345678910', 'Willi Ramon', '1995-07-22', 'Desenvolvedor', '2600.00'),
('23456789120', 'Luzilene Oliveira', '1970-04-10', 'Gerente', 50000.00),
('34567891023', 'Leônidas Ouriço', '2015-11-15', 'Ajudante', '1200.50'),
('45678945612', 'Preta Pitanga', '2000-04-22', 'Supervisora', '45000.56'),
('56789123456', 'José da Silva', '1971-09-05', 'Desenvolvedor Senior', '40000.56');

select * from funcionarios where salario > 2000;

select * from funcionarios where salario < 2000;

update funcionarios
set cargo = 'Desenvolvedor Pleno'
where cpf = '12345678910';