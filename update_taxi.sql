use itaxi;

select * from cliente;
select * from cliente_particular;
select * from cliente_empresa;
select * from taxi;
select * from corrida;

# Populando a tabela cliente
insert into cliente(id, nome)
values (0001, "Rian Albano");

insert into cliente(id, nome)
values(0002, "Lincoln Lau");

insert into cliente(id, nome)
values(0003, "Leandro Pinto");

# Populando as tabelas de clientes particular e empresarial
insert into cliente_particular(id, cpf)
values(0001, 87691998333);

insert into cliente_empresa(id, cnpj)
values (0002, 38760525000106);

# Populado a tabela de táxis
insert into taxi
values("HXU0330", "Chevrolet", "Camaro", 2012);

insert into taxi
values("HTZ5484", "Ferrari", "McLaren", 2018);

insert into taxi
values("HVB1290", "Lamborghini", "Huracan", 2022);

# Atualizando o ano de fabricação de táxis
update taxi
set anofab = 2020
where anofab = 2018;

insert into corrida
values(0001, "HTZ5484", "2024-07-23");

insert into corrida
values(0002, "HXU0330", "2024-07-23");

insert into corrida
values(0003, "HVB1290", "2024-07-23");