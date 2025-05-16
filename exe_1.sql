create database db_RHempresa;
use db_RHempresa;

create table colaboradores(
	id BIGINT AUTO_INCREMENT primary key,
    nome VARCHAR(255) not null,
    cargo VARCHAR(255),
    salario DECIMAL(8,2) not null,
    departamento VARCHAR(255)
);

insert into colaboradores(nome, cargo, salario, departamento)
values ("Gabriel Julio", "Desenvolvedor Jr.", 3000.00, "Tecnologia"),
("Joice Rabelo", "Pesquisadora Pl.", 6000.00, "Pesquisa"),
("Gustavo Henrique", "Designer de produto Jr.", 3500.00, "Tecnologia"),
("Maria Luiza", "Desenvolvedor Sr.", 10000.00, "Tecnologia"),
("Pedro Marques", "Gerente de projetos", 11000.00, "Projetos");
insert into colaboradores(nome, cargo, salario, departamento) values ("Lucas da Silva", "Auxiliar de limpeza", 1500.00, "Serviços gerais");

select * from colaboradores where salario > 2000;

select * from colaboradores where salario < 2000;

update colaboradores set salario=4500 where id = 1;