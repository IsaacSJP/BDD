--script 3
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567890','camila','ramirez','camila.ramirez@example.com','01/02/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567891','mateo','sanchez','mateo.sanchez@example.com','02/02/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567892','Laura','Gomez','laura.gomez@example.com','03/02/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567893','andres','perez','andres.perez@example.com','04/02/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567894','sofia','martinez','sofia.martinez@example.com','05/02/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567895','diego','herrera','diego.herrera@example.com','06/02/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567896','valeria','torres','valeria.torres@example.com','07/02/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567897','juan','castillo','juan.castillo@example.com','08/02/2000');

select * from estudiantes