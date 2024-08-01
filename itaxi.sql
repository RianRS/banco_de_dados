use itaxi;

CREATE TABLE cliente(
id VARCHAR(4),
nome VARCHAR(80),
PRIMARY KEY(id)
);

CREATE TABLE cliente_particular(
id VARCHAR(4),
cpf VARCHAR(14),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE cliente_empresa(
id VARCHAR(14),
cnpj VARCHAR(18),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE taxi(
placa VARCHAR(7),
marca VARCHAR(30),
modelo VARCHAR(30),
anofab INTEGER,
PRIMARY KEY(placa)
);

CREATE TABLE corrida(
cliid VARCHAR(4),
placa VARCHAR(7),
dataPedido DATE,
PRIMARY KEY(cliid, placa, dataPedido),
FOREIGN KEY(cliid) REFERENCES cliente(id),
FOREIGN KEY(placa) REFERENCES taxi(placa)
);

CREATE TABLE cliente_fake(
id VARCHAR(4),
nome VARCHAR(80),
PRIMARY KEY(id)
);

drop table cliente_fake;

alter table cliente_particular
add nome CHAR;

alter table cliente_particular
modify column nome date;

alter table cliente_particular
drop nome;

insert into cliente(id, nome)
values ("0001", "Leandro Pinto");

describe cliente;
describe cliente_particular;
describe cliente_empresa;
describe taxi;
describe corrida;

select * from cliente;