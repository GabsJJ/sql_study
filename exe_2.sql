create database db_ecommerce;
use db_ecommerce;

create table produtos(
	id BIGINT AUTO_INCREMENT primary key,
    nome VARCHAR(255) not null,
    avaliacao DECIMAL(2,1),
    preco DECIMAL(8,2) not null,
    descricao VARCHAR(255)
);

insert into produtos(nome, avaliacao, preco, descricao)
values ("Monitor Gamer Curvo LG UltraGear", 4.5, 1899.99, "Monitor gamer de 34 polegadas"),
("Cabo DisplayPort ELG", 4.5, 79.99, "8K Ultra HD"),
("Processador Intel Core i5-12400F", 5.0, 749.99, "2.5GHz (4.4GHz Max Turbo), Cache 18MB, LGA 1700"),
("SSD WD Blue SN580 NVMe", 5.0, 279.99, "250GB, M.2 PCle, Gen4"),
("Placa Mãe Gigabyte B550M", 4.5, 749.99, "DS3H AC, Rev 1.4, AMD AM4, Micro ATX, DDR4"),
("Placa de Vídeo G610 NVIDIA GeForce", 4.5, 189.99, "2GB, DDR3"),
("HD Externo WD My Passport", 4.5, 914.99, "4TB, USB 3.0, Azul"),
("Placa de Vídeo RTX 5080 AORUS MASTER ICE", 5.0, 11299.90, "16GB GDDR7, 256bits, RGB, DLSS, Ray Tracing");

select * from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set descricao="12ª Geração - Max Turbo (até 4.4GHz) | 2.5GHz, Cache 18MB, LGA 1700" where id = 3;