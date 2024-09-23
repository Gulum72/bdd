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

--actualizacion a puntajes mayores de 9
update videojuegos set descripcion = 'mejor puntuado'
where valoracion > '9'

--eliminar juegos con valoracion menor que 7
delete from videojuegos
where valoracion <7

--inserciones add
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);

--listar con nombre C o valoracion 7
select * from videojuegos
where nombre like '%c%' or valoracion = 7

--seleccionar codigo entre 3 y 7
select * from videojuegos
where (codigo between '3' and '7') or (valoracion = 7)

--seleccionar juegos de guerra
select * from videojuegos
where (valoracion >7 and nombre like 'c%') or (valoracion >8 and nombre like 'D%')