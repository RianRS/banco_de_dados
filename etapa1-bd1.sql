create schema atividade1;
use atividade1;
show tables;

# Qual o nome dos departamentos da empresa?
select * from department;
# R: Headquarters, Administration, Research

# Quantos empregados tem o departamento de pesquisa ("research")?
select * from employee where Dno = 5;
# R: 4 empregados

insert into department (Dname, Dnumber, Mgr_ssn)
values("Data science", 7, "333445555");

# Inserindo dois empregados novos do departamento de Ciência de Dados.
insert into employee 
values('Rian', 'A', 'Ribeiro', '111222333', '2005-04-05', '01 Itapajé CE', 'M', 60000, '111222333', 7);

insert into employee 
values('Clarisse', 'G', 'Barreto', '444555666', '2004-03-24', '02 Itapajé CE', 'F', 80000, '444555666', 7);

select * from employee where Dno = 7;

# Aumentando o salário de todos os empregados em 23.5%.
update employee
set Salary = Salary + (Salary * 23.5 / 100);

# Mudando a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE.
update dept_locations set Dlocation = 'Itapajé CE' where Dnumber = 4;