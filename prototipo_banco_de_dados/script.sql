create database db_donation;

use db_donation;

create table tb_usuario(
	id int auto_increment primary key,
    nome varchar(50) NOT NULL,
    ultimo_nome varchar(50),
    documento varchar(20) NOT NULL,
	estado varchar(2),
    cidade varchar(50),
    foto varchar(255), 
    login varchar(50) NOT NULL,
    senha varchar(100) NOT NULL,
    tipo_usuario varchar(10) default "doador"
);

create table tb_categoria(
	id int auto_increment primary key,
    tipo varchar(50) NOT NULL,
    descricao varchar(200) not null
);

create table tb_doacao(
	id int auto_increment primary key,
    data_doacao DATETIME,
    valor DECIMAl(8,2) DEFAULT 0,
    id_categoria int,
    id_usuario int,
    
    foreign key (id_usuario) REFERENCES tb_usuario(id),
    foreign key (id_categoria) REFERENCES tb_categoria(id)
);
