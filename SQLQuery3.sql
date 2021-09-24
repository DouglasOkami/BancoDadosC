create database SistemaEscolas;

use SistemaEscolas;

create table alunos
(
aluno_id int primary key identity,
aluno_nome varchar(30) not null,
aluno_email varchar(30) not null,
aluno_telefone varchar(30) not null
);

select * from alunos;

create table professores
(
professor_id int primary key identity,
professor_email varchar(50) not null,
professor_senha varchar(50) not null,
professor_nome varchar(50) not null
);

select * from professores;

create table disciplinas
(
disciplina_id int primary key identity,
disciplina_nome varchar(50) not null,
disciplina_carga varchar(50) not null,
fk_professor_id int foreign key references professores(professor_id)
);

select * from disciplinas

create table matricula_alunos_disciplinas
(
	fk_aluno_id int foreign key references alunos(aluno_id),
	fk_disciplina_id int foreign key references disciplinas(disciplina_id),
	matricula_id int primary key identity
);

select * from alunos;
select * from professores;
select * from disciplinas
select * from matricula_alunos_disciplinas;

insert into alunos(aluno_nome, aluno_email,aluno_telefone) values
('Drieli','drieli@gmail.com','3434-3434'),
('Niscolas','niscolas@gmail.com','1212-1212'),
('Dornellas','dornellas@gmail.com','4444-4444');

insert into professores(professor_email,professor_senha,professor_nome) values
('tsukamoto@gmai.com','5555','Tsukamoto'),
('daniel@gmail.com','4444','Daniel'),
('porchales@gmail.com','3333','Porchales');

insert into disciplinas(disciplina_nome,disciplina_carga,fk_professor_id) values
('matemática','40',1),
('química','40',2),
('biologia','40',3);

insert into matricula_alunos_disciplinas(fk_aluno_id,fk_disciplina_id) values
(1,3),
(2,4),
(3,1);
