-- script 4
create table registros_entrada (
	codigo_registro int not null, 
	codigo_empleado char(10) not null,
	apellido varchar(50) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1231','1234567891','ramirez','01/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1232','1234567892','sanchez','02/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1233','1234567893','Gomez','03/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1234','1234567894','perez','04/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1235','1234567895','martinez','05/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1236','1234567896','herrera','06/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1237','1234567897','torres','07/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1238','1234567898','castillo','08/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('1239','1234567899','jacome','09/01/2025','10:00');

insert into registros_entrada (codigo_registro,codigo_empleado,apellido,fecha,hora)
values ('12310','1234567890','punina','10/01/2025','10:00');

select * from registros_entrada