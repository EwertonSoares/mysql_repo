#Atividade 1

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


#Atividade 2

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id int auto_increment primary key,
    tipo varchar(20) not null,
    borda bool
);

create table tb_pizzas(
	id int auto_increment primary key,
    nome varchar(100) not null,
	valor float not null,
    tamanho varchar(20),
    id_categoria int,
    
	foreign key (id_categoria) references tb_categorias(id)
);

insert into tb_categorias(tipo, borda) values ("Doce", true);
insert into tb_categorias(tipo, borda) values ("Salgada", true);
insert into tb_categorias(tipo, borda) values ("Doce", false);
insert into tb_categorias(tipo, borda) values ("Salgada", false);
insert into tb_categorias(tipo, borda) values ("Salgada", false);

select * from tb_categorias;

insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Mussarla", 48.50, "Media", 2);
insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Portuguesa", 78.00, "Grande", 4);
insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Calabresa", 25.50, "Pequena", 5);
insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Bacon", 56.50, "Média", 2);
insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Americana", 88.50, "Grande", 4);
insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Moda da casa", 85.50, "Grande", 1);
insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Brigadeiro", 27.50, "Pequena", 1);
insert into tb_pizzas(nome, valor, tamanho, id_categoria) values ("Chocolate", 30.00, "Média", 3);

select * from tb_pizzas;

select * from tb_pizzas where valor > 45.00;

select * from tb_pizzas where valor >= 50.00 and valor <= 100.00;

select * from tb_pizzas where nome like "M%";

select * from tb_pizzas inner join tb_categorias on tb_pizzas.id_categoria = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias 
on tb_pizzas.id_categoria = tb_categorias.id where tb_categorias.tipo = "Doce";