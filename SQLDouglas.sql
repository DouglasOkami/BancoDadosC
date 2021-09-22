--Criando banco de dados
create database Filmes;

--Acessando banco de dado
use Filmes;

create table Generos
(
	idGeneros int primary key identity,
	Nome varchar(200) not null
);

create table Filmes
(
	idFilme int primary key identity,
	Nome varchar(255)not null,
	Sinopse varchar(255),
	idGeneros int foreign key references Generos(idGeneros)
);

-- Comando DML - Linguagem de manipulação de dados
-- insert, alter , delete e upgrade
-- inser é utilizado para inserir dados em uma tabela
insert into Generos(Nome) values ('Ação')
insert into Generos(Nome) values ('Ficção')
insert into Generos(Nome) values ('Aventura')
insert into Generos(Nome) values ('Comédia')
insert into Generos(Nome) values ('Fantasia')

-- Deletar registro de uma tabela

delete from Generos where idGeneros > 0;
delete from Filmes where idFilme > 0;

-- Atulizar dados de uma tabela

update Generos set Nome = 'Comédia/Drama' where idGeneros = 50;

-- resete identity

DBCC ckeckident('[Filmes]', reseed, 0);

-- Selecionar dados de uma tabela

select idGeneros, nome from Generos;

select * from Generos;

-- Cadastrando filmes

insert into Filmes (Nome, Sinopse , idGeneros , duracao) values
('Alice','Conto infantil', 21, '120 min'),
('Transformers','filme mentiroso', 22, '120 min'),
('kung fu','filme de luta', 23, '120 min'),
('Lucas','Conto animado', 24, '120 min');

select * from Filmes;

--alterando tabelas

alter table Filmes add duracao varchar(255);

-- Inserir a duração 

update Filmes set duracao = '120 min' where idFilme = 5;

--Juntando dados de duas tabelas (inner Join)
select Filmes.Nome , Filmes.Sinopse , Generos.Nome as Genero, Filmes.duracao from Filmes -- Tabela 1
inner join Generos -- Tabela 2
on Filmes.idGeneros = Generos.idGeneros;

-- Usando Alias
select f.Nome , f.Sinopse , g.Nome as Genero, f.duracao from Filmes as f -- Tabela 1
inner join Generos as g-- Tabela 2
on f.idGeneros = g.idGeneros;