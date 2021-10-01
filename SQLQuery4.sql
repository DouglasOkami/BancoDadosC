create database BancoDeDados;

use BancoDeDados;

create table usuarios
(
	usuarioId int primary key identity,
	usuarioNome varchar(50) not null,
	usuarioEmail varchar(50) not null,
	usuarioSenha varchar(50) not null
);

select * from usuarios;