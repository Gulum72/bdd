create table estudiantes(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
fecha_nacimiento date not null,
constraint estudiantes_pk primary key(cedula)
)
--1
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1988712561','Carlos','Chavez','carloschavez@gmail.com','12/03/2004')
--2
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1986168261','Maria','Cordova','mariacordova@gmail.com','09/12/2000')
--3
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('598515161','Alberto','Espin','albertoespin@gmail.com','23/06/1998')
--4
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('4892042561','Juan','Charro','juancharro@gmail.com','29/07/1987')
--5
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('8791922561','Samanta','Corral','samantacorral@gmail.com','01/09/2001')
--6
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('8913495841','Joaquin','Gonzales','joaquingonzales@gmail.com','19/02/2003')
--7
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727485914','Elisa','Travez','elisatraves@gmail.com','17/08/2000')
--8
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('2859194841','Gonzalo','Jimenez','gonzalojimenez@gmail.com','10/10/2009')


--mostrar columnas de la tabla
select * from estudiantes

--recuperar nombre y cedula
select nombre,cedula from estudiantes

--recuperar nombre estudiantes con cedula que empiece en 17
select nombre from estudiantes
where cedula like '17%' 

--recuperar nombres completos con A
select nombre,apellido from estudiantes
where nombre like 'A%'

--cambiar apellido por hermandez
update estudiantes set apellido = 'Hernandez'
where cedula like '17%'

--eliminar estudiantes cuando cedula termine en 05
delete from estudiantes
where cedula like '%05'

--inserciones add
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');

--nombre y apellido de estudiante con nombre M o apellido 	Z
select nombre, apellido from estudiantes
where nombre like 'M%' or apellido like '%z'

--select q traiga nombres numero 32
select nombre from estudiantes
where cedula like '18%' or cedula like '%32%'

--select nombres completos cedula termine en 06 y empiece en 17
select nombre,apellido from estudiantes
where cedula like '17%' or cedula like '%06'