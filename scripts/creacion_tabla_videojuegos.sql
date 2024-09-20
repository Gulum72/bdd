drop table videojuegos
--creando tablas

--primera tabla
create table videojuegos(
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint productos_pk primary key(codigo)
)