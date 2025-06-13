-- script 6
create table transacciones (
	codigo int not null,
	numero_cuenta char (5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)
)

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1231,'12341',10,'C','01/02/2025','10:31');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1232,'12342',15,'D','02/02/2025','10:32');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1233,'12343',20,'C','03/02/2025','10:33');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1234,'12344',25,'D','04/02/2025','10:34');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1235,'12345',30,'C','05/02/2025','10:35');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1236,'12346',35,'D','06/02/2025','10:36');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1237,'12347',40,'C','07/02/2025','10:37');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1238,'12348',45,'D','08/02/2025','10:38');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1239,'12349',50,'C','09/02/2025','10:39');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1230,'12340',55,'D','10/02/2025','10:40');

select * from transacciones