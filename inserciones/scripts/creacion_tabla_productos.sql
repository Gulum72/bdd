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


--colocando en 0 productos con null
update productos set stock = 0
where descripcion is null


--eliminar productos con la descripcion null
delete from productos 
where descripcion is null

--insercion add
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (9,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (10,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (11,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (12,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (13,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (14,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (15,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (16,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (17,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (18,'Coca Cola',3.50,300);


--productos stock =10 o precio <10
select * from productos
where stock = '10' and precio < '10'

--productos con M en el nombre o espacio blanco en descripcion
select nombre,stock from productos
where nombre like '%m%' or descripcion =' '

--seleccionar nombre de productos null
select nombre from productos
where descripcion is null or stock = 0