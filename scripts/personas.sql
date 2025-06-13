--crea la tabla personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
)

insert into personas(cedula,nombre,apellido)
values ('1728866524','Isaac','Jacome')

insert into personas(cedula,nombre,apellido)
values ('1728866525','Steven','Punina')

insert into personas(cedula,nombre,apellido,estatura)
values ('1728866526','Isaac','Punina',1.85)

insert into personas(cedula,nombre,apellido,numero_hijos)
values ('1828866524','Isaac','02',2)

insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1828866525','Isaac','02',2,1.85,'15/05/2007','22:56',100.52)

select cedula,nombre,numero_hijos,estatura from personas 

select * from personas

