--Criando banco de dados
create database Blog;
--Acessando banco de dados
use Blog;

create table usuarios
(
 usuario_id int primary key identity,
 usuario_nome varchar(30) not null,
 usuario_email varchar(30) not null,
 usuario_senha varchar(30) not null
);

select * from usuarios;

create table posts
(
post_id int primary key identity,
post_titulo varchar(50),
post_conteudo text
);
select * from posts;

create table comentarios
( 
	comentario_id int primary key identity,
	fk_usuario_id int foreign key references usuarios(usuario_id),
	fk_post_id int foreign key references posts(post_id),
	comentario_conteudo varchar(255) not null,
	comentario_date date,
	comentario_hora time(0)
);
insert into usuarios (usuario_nome, usuario_email , usuario_senha) values
('Douglas Ferreira','DouglasSFer@gmail.com','babata'),
('Driele Figueiredo','DrieleFigue@gmail.com','dente123'),
('Nicolas Dornellas Top','NicolasDor@gmail.com','repolho123');

insert into posts(post_titulo, post_conteudo ) values
('Curso Banco de Dados','Excelente curso de banco de dados da escola Senai'),
('Curso C#', 'Excelente curso de c# da escola Senai'),
('Segurança','o Brasil precisa de mais segurança');

insert into comentarios(fk_usuario_id,fk_post_id,comentario_conteudo,comentario_date,comentario_hora) values
(1,1,'Dornellas vai da um role hoje','23/09/2021','16:20'),
(2,2,'Nicolas é um bom amigo','23/09/2021','16:21'),
(3,3,'Dree melhor pessoa','23/09/2021','16:22');

select * from usuarios;
select * from posts;
select * from comentarios;