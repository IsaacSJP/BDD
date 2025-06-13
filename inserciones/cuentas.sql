-- script 2
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1231,1231,'01/01/2000',200.15);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1232,1232,'02/01/2000',100.5);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1233,1233,'03/01/2000',123.2);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1234,1234,'04/01/2000',45.2);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1235,1235,'05/01/2000',114.8);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1236,1236,'06/01/2000',456.3);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1237,1237,'07/01/2000',782.3);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1238,1238,'08/01/2000',12.21);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (1239,1239,'09/01/2000',41.21);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12310,12310,'10/01/2000',45.61);

select * from cuentas