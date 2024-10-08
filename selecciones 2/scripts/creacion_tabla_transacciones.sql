drop table clientes
--creando tablas

--primera tabla
create table transacciones(
codigo int not null,
numero_cuenta char(5) not null,
monto money not null,
tipo char(1) not null,
fecha date not null,
hora time not null,
constraint transacciones_pk primary key(codigo)
)
--1
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01011,'19887',70.50,'C','22/05/2024','14:23')
--2
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01022,'64156',20.60,'D','22/05/2024','09:12')
--3
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01033,'17812',56.12,'C','12/05/2024','15:41')
--4
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01044,'62313',21.51,'C','13/05/2024','09:41')
--5
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01055,'46156',51.62,'D','22/05/2024','15:43')
--6
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01066,'18313',51.50,'C','22/05/2024','14:23')
--7
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01077,'52313',87.50,'D','22/05/2024','14:23')
--8
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01088,'34672',89.50,'D','22/05/2024','14:23')
--9
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01099,'17854',62.50,'C','22/05/2024','14:23')

--10
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01101,'18783',62.50,'C','22/05/2024','14:23')


--mostrar columnas de la tabla
select * from transacciones