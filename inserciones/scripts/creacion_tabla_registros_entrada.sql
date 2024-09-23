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

--seleccionar cedula,fecha y hora
select cedula_empleado, fecha, hora from registros_entrada

--registros de entrada entre 7:00 y 14:00
select * from registros_entrada
where hora between '7:00' and '14:00'

--registros de entrada superiores a 8:00
select * from registros_entrada
where hora >'8:00' 

--actualizar todas las cedulas
update registros_entrada set cedula_empleado = '082345679'
where fecha between '01/08/2024' and '31/08/2024'

--eliminar todos los registros del mes de junio
delete from registros_entrada
where fecha between '01/06/2024' and '30/06/2024'

--inserciones add
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

--registros de septiembre
select * from registros_entrada
where (fecha between '01/09/2024' and '30/09/2024') or (cedula_empleado like '17%')

--registros de agosto
select * from registros_entrada
where (fecha between '01/08/2024' and '31/08/2024') or (hora between '8:00' and '12:00')

--registros de agosto v2
select * from registros_entrada
where (fecha between '01/08/2024' and '31/08/2024' and cedula_empleado like '17%' and hora between '8:00' and '12:00' )
or (fecha between '01/09/2024' and '30/09/2024' and cedula_empleado like '08%' and hora between '9:00' and '13:00')