drop table clientes
--creando tablas

--primera tabla
create table registros_entrada(
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date,
hora time not null,
constraint productos_pk primary key(codigo_registro)
)