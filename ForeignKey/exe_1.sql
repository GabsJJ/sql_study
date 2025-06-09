create database db_generation_game_online;
use db_generation_game_online;

#1
create table tb_classes(
	id bigint auto_increment primary key,
    titulo VARCHAR(20),
    descricao VARCHAR(255)
);

#2
create table tb_personagens(
	id bigint auto_increment primary key,
    nome VARCHAR(20),
    ataque BIGINT,
    defesa BIGINT,
    classe_id BIGINT
);

#3
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classe_id) REFERENCES tb_classes (id);

#4
insert into tb_classes(titulo, descricao)
values ("Mago", "Joga magias"),
("Guerreiro", "Usa a força"),
("Feiticeiro", "Lança maldições"),
("Ladrão", "Sorrateiro"),
("Curandeiro", "Da suporte");
select * from tb_classes;

#5
insert into tb_personagens(nome, ataque, defesa, classe_id)
values ("Muradan", 2050, 1000, 1),
("Exios", 3000, 2000, 2),
("Fixer", 2500, 1500, 3),
("Stelph", 4000, 2200, 4),
("Sager", 1500, 4000, 5),
("Ralph", 2300, 1200, 1),
("Garry", 4000, 3000, 2),
("Geralt", 3000, 2600, 3),
("Caspian", 3000, 2600, 2);
select * from tb_personagens;

#6
select * from tb_personagens where ataque > 2000;
#7
select * from tb_personagens where defesa BETWEEN 1000 AND 2000;
#8
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

#9
SELECT nome, ataque, defesa, tb_classes.titulo, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

#10
SELECT nome, ataque, defesa, tb_classes.titulo, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_personagens.classe_id = 2;