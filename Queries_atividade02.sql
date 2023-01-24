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


