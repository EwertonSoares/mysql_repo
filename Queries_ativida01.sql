create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id int auto_increment primary key,
    forca int not null,
    velocidade int not null,
    agilidade int not null,
    descricao varchar(100)
);

create table tb_personagens(
	id int auto_increment primary key,
    nome varchar(100),
    poder_de_ataque int,
    poder_de_defesa int,
    peso float,
    id_class int,
    
    foreign key (id_class) references tb_classes(id)
);

insert into tb_classes(forca, velocidade, agilidade) values (10, 8, 5);
insert into tb_classes(forca, velocidade, agilidade) values (9, 9, 10);
insert into tb_classes(forca, velocidade, agilidade) values (10, 10, 10);
insert into tb_classes(forca, velocidade, agilidade) values (8, 8, 9);
insert into tb_classes(forca, velocidade, agilidade) values (7, 10, 10);

select * from tb_classes;

insert into tb_personagens(nome, poder_de_ataque, poder_de_defesa, peso, descricao, id_class) values ("Kratos", 2023, 1500, 85, "Arqueiro", 3);
insert into tb_personagens(nome, poder_de_ataque, poder_de_defesa, peso, descricao, id_class) values ("Zeus", 2050, 3000, 90, "Velocista", 2);
insert into tb_personagens(nome, poder_de_ataque, poder_de_defesa, peso, descricao, id_class) values ("Hera", 1500, 1000, 60,"Arqueiro", 5);
insert into tb_personagens(nome, poder_de_ataque, poder_de_defesa, peso, idescricao, id_class) values ("Atena", 1800, 1800, 72,"Super forca", 1);
insert into tb_personagens(nome, poder_de_ataque, poder_de_defesa, peso, descricao, id_class) values ("Caman", 2500, 100, 80,"Invisibilidade", 2);

select * from tb_personagens;

select * from tb_personagens where poder_de_ataque > 2000;

select * from tb_personagens where poder_de_defesa >= 100 and poder_de_defesa <= 2000;

select * from tb_personagens where nome like "C%";

select * from tb_personagens inner join tb_classes on tb_personagens.id_class = tb_classes.id;

select * from tb_personagens inner join tb_classes on tb_personagens.id_class = tb_classes.id
where tb_classes.descricao = "Arqueiro" ;

