drop table videojuegos
--creando tablas

--primera tabla
create table videojuegos(
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint videojuegos_pk primary key(codigo)
)
--1
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (2020,'resident evil','juego de zombies','10')
--2
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (2021,'call of duty','juego de guerra','9')
--3
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (2022,'esoccer','juego de futbol','10')
--4
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (2023,'minecraft','juego de exploracion','10')
--5
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (2024,'eve online','juego de naves espaciales','10')
--6
insert into videojuegos(codigo,nombre,valoracion)
values (2025,'among us','8')
--7
insert into videojuegos(codigo,nombre,valoracion)
values (2026,'war thunder','7')
--8
insert into videojuegos(codigo,nombre,valoracion)
values (2027,'LOL','10')



--mostrar columnas de la tabla
select * from videojuegos

--nombres que comiencen en C
select * from videojuegos
where nombre like 'c%'

--valoracion entre 9 y 10
select * from videojuegos
where valoracion between '9' and '10'

--descriocion null
select * from videojuegos
where descripcion is null