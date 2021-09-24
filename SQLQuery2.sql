use Blog;

select * from usuarios;
select * from posts;
select * from comentarios;

delete from posts where post_id > 0;
delete from comentarios where comentario_id > 0;

alter table posts add fk_usuario_id int foreign key references usuarios(usuario_id);

insert into posts(post_titulo, post_conteudo , fk_usuario_id )values
('The SENAI of computing', 'applied informatics.', 1),
('Desenvolvimento c#', 'um dos melhores cursos que ja fiz , se não o melhor.', 2);

insert into comentarios(fk_usuario_id , fk_post_id, comentario_conteudo, comentario_date, comentario_hora) values
(1,11,'Excelente muito bom', GETDATE() ,'14:08'),
(2,12, 'Bem trabalhado', GETDATE() ,'14:07');

select COUNT(usuario_id) from usuarios;