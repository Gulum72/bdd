--creacion tabla cuentas
create table cuentas(
numero_cuenta char(5) not null,
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key(numero_cuenta)
)
--1
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01011,'19887','10/01/2024',70.50)
--2
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01022,'64156','22/05/2024',100.20)
--3
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01033,'17812','04/11/2024',20.13)
--4
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01044,'62313','29/09/2024',200.41)
--5
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01055,'46156','02/09/2024',200)
--6
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01066,'18313','18/06/2024',500.14)
--7
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01077,'52313','24/12/2024',135.21)
--8
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01088,'34672','19/07/2024',10)
--9
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01099,'17854','03/05/2024',190)

--10
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (01101,'18783','09/03/2024',89.52)


--mostrar columnas de la tabla
select * from cuentas