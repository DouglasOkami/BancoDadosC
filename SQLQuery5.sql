create database EscolaSenai;

use EscolaSenai;

create table alunos
(
	alunoId int primary key identity,
	alunoNome varchar(50) not null,
	alunoEmail varchar(50) not null,
	alunoEndereço varchar(50) not null,
	alunoTelefone varchar(50),
	alunoEscolaridade varchar(50)
);

drop table alunos;

create table professores
(
	professorId int primary key identity,
	professorNome varchar(50) not null,
	professorEmail varchar(50) not null,
	professorEndereco varchar(50) not null,
	professorTelefone varchar(50),
	professorCargo varchar(50)
);

drop table professores;

create table 

select * from alunos;
select * from professores;