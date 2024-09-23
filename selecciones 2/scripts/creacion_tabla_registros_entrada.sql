drop table clientes
--creando tablas

--primera tabla
create table registros_entrada(
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date,
hora time not null,
constraint registros_entrada_pk primary key(codigo_registro)
)
--1
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1111,'1988718987','10/01/2024','06:12')
--2
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1112,'1872838581','11/01/2024','09:18')
--3
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1113,'4859182848','09/01/2024','10:18')
--4
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1114,'2738591828','29/01/2024','12:12')
--5
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1115,'2938581959','20/01/2024','13:20')
--6
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1116,'8591828591','22/01/2024','19:50')
--7
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1117,'1847184919','15/01/2024','15:53')
--8
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1118,'1829591929','06/01/2024','13:47')
--9
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1119,'3859192949','28/01/2024','09:35')

--10
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (1120,'2959182949','01/01/2024','08:18')


--mostrar columnas de la tabla
select * from registros_entrada