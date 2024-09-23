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

--transacciones tipo D
select * from transacciones
where tipo= 'D'

--transacciones entre 200 y 2000
select * from transacciones
where monto between '200' and '2000'

--fecha diferente de null
select codigo,monto,tipo,fecha from transacciones
where fecha is not null


--actualizar tipo cuando 100 a 500
update transacciones set tipo='T'
where monto between '100' and '500' and fecha between '01/09/2024' and '30/09/2024' and hora between '14:00' and '20:00'

--eliminar transferencias con horas y fecha
delete from transacciones
where hora between '14:00' and '18:00' and fecha between '01/08/2024' and '31/08/2024'

--inserciones add
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto,  tipo,fecha, hora)
values(23210, '32015', 400, 'C','06/11/2024', '13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

--seleccionar transacciones tipo C
select * from transacciones
where tipo = 'C' and numero_cuenta between '222001' and '22004'

--seleccionar transacciones tipo D
select * from transacciones
where tipo = 'D' and fecha= '25/05/2024' and numero_cuenta between '22007' and '22010'

--seleccionar transacciones codigo entre 1 y 5
select * from transacciones
where (codigo between '1' and '5') or (numero_cuenta between '22002' and '22004') or (fecha between '26/05/2024' and '29/05/2024')