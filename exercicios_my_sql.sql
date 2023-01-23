CREATE DATABASE IF NOT EXISTS rh_db;

USE rh_db;

create table tb_colaboradores(
	id INT AUTO_INCREMENT,
    cpf VARCHAR(15) UNIQUE NOT NULL,
    nome varchar(100) NOT NULL,
    ultimo_nome VARCHAR(100) NOT NULL,
    salario double NOT NULL,
    
    
    PRIMARY KEY(id)
    
);

INSERT INTO tb_colaboradores(cpf, nome, ultimo_nome, salario)
values('123.456.789-10', "Ewerton", "Silva", 1500.00);

INSERT INTO tb_colaboradores(cpf, nome, ultimo_nome, salario)
values('012.345.678-91', "Gustavo", "Santos", 2800.00);

INSERT INTO tb_colaboradores(cpf, nome, ultimo_nome, salario)
values('109.876.543-21', "Maria", "Sousa", 5000.00);

INSERT INTO tb_colaboradores(cpf, nome, ultimo_nome, salario)
values('987.654.321-00', "Luiza", "Olioveira", 2500.00);

INSERT INTO tb_colaboradores(cpf, nome, ultimo_nome, salario)
values('876.543.210-20', "Pedro", "Santoro", 1300.00);

SELECT * FROM tb_colaboradores where salario > 2000;

SELECT * FROM tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores SET salario = 1700.00 WHERE id = 1;



