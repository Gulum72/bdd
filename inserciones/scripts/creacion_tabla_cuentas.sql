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

--mostrar todos los numeros de cuenta y saldos de cuenta
select numero_cuenta,saldo from cuentas

--registros desde hoy hasta 2 meses antes 
select * from cuentas
where fecha_creacion between '22/07/2024' and '22/09/2024'

--recuperando cuenta y saldo desde hoy hasta 2 meses atras
select numero_cuenta,saldo from cuentas
where fecha_creacion between '22/07/2024' and '22/09/2024'


--actualizar saldo a 10
update cuentas set saldo = 10
where cedula_propietario like '17%'

--eliminar cuentas con cedula que empiece en 10
delete from cuentas 
where cedula_propietario like '10%'

--inserciones add
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);
