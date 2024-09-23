drop table clientes
--creando tablas

drop table productos
--primera tabla
create table productos(
codigo int not null,
nombre varchar(50) not null,
descripcion varchar(200),
precio money not null,
stock int not null,
constraint productos_pk primary key(codigo)
)
--1
insert into productos(codigo,nombre,descripcion,precio,stock)
values (1,'royal','polvo royal para hornear',2.50,6)
--2
insert into productos(codigo,nombre,descripcion,precio,stock)
values (2,'crema nivea','crema para peinar cabello',4.60,8)
--3
insert into productos(codigo,nombre,descripcion,precio,stock)
values (3,'doritos','dulce artificial',1,10)
--4
insert into productos(codigo,nombre,descripcion,precio,stock)
values (4,'coca cola','bebida refrescante',3.00,11)
--5
insert into productos(codigo,nombre,descripcion,precio,stock)
values (5,'pilsener','bebida alcoholica',2.50,20)
--6
insert into productos(codigo,nombre,precio,stock)
values (6,'pony malta',1.50,10)
--7
insert into productos(codigo,nombre,precio,stock)
values (7,'manicris',1.20,22)
--8
insert into productos(codigo,nombre,precio,stock)
values (8,'chupete',0.25,13)


--mostrar columnas de la tabla
select * from productos

--creando select busqueda Q
select * from productos
where nombre like 'Q%'

--creando select descripcion null
select * from productos where descripcion is null

--creando select precios entre 2 y 3
select * from productos
where precio between '2' and '3'
