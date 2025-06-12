-- script 4
create table registros_entrada (
	codigo_registro int not null, 
	codigo_empleado char(10) not null,
	apellido varchar(50) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)