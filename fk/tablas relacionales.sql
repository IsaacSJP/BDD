
-- cuentas
alter table cuentas
ADD CONSTRAINT cedula_propietario
foreign key(cedula_propietario)
references usuarios(cedula)

delete from cuentas

create table usuarios(
	cedula char(5) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuarios_pk primary key(cedula)
)

select * from cuentas

insert into usuarios(cedula,nombre,apellido)
values ('12341','juan','jacome');
insert into usuarios(cedula,nombre,apellido)
values ('12342','mario','ramorez');
insert into usuarios(cedula,nombre,apellido)
values ('12343','maria','punina');

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12341','12341','2022-08-21','150.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12342','12342','2023-07-11','250.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12343','12343','2024-06-01','350.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12344','12341','2022-09-21','450.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','12342','2023-02-11','250.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12346','12343','2024-11-01','360.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12347','12341','2022-12-21','170.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12348','12342','2023-07-11','850.00');
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12349','12343','2024-06-01','350.00');

--clientes
create table compras(
	id_compra INT not null,
	cedula  char(10) not null,
	fecha_compra DATE not null,
	monto DECIMAL(10,2) not null,
	constraint compras_pk primary key(id_compra),
	foreign key(cedula)
	references clientes(cedula)
)

select * from clientes

insert into clientes(cedula,nombre,apellido,edad)
values ('1234567891','juan','jacome',18);
insert into clientes(cedula,nombre,apellido,edad)
values ('1234567892','maria','perez',19);
insert into clientes(cedula,nombre,apellido,edad)
values ('1234567893','mario','Punina',20);
insert into clientes(cedula,nombre,apellido,edad)
values ('1234567894','Monica','Punina',20);

select * from compras

insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0001','1234567894','2025-10-10',10.2);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0002','1234567893','2025-10-09',10.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0003','1234567892','2025-10-11',15.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0004','1234567894','2025-10-10',11.2);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0005','1234567893','2025-10-09',20.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0006','1234567892','2025-10-11',25.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0007','1234567894','2025-10-10',13.2);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0008','1234567893','2025-10-09',11.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0009','1234567892','2025-10-11',15.4);
insert into compras(id_compra,cedula,fecha_compra,monto)
values ('0010','1234567892','2025-10-11',16.4);
-- productos
create table ventas(
	id_venta INT ,
	codigo_producto  INT not null,
	fecha_venta DATE not null,
	cantidad INT ,
	constraint ventas_pk primary key(id_venta),
	foreign key(codigo_producto)
	references productos(codigo)
)

select * from productos

insert into productos (codigo,nombre,descripcion,precio,stock)
values (11,'Miel',null,money(1.5),10);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (12,'Caramelo','alto en azucar',money(0.5),20);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (13,'Galletas',null,money(2.5),30);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (14,'Te de menta','no tiene azucar',money(1.25),40);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (15,'Miel pura',null,money(1.75),50);

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values (1,11,'2025-01-10',10);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values (2,12,'2025-01-11',5);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values (3,13,'2025-01-13',15);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values (4,14,'2025-01-14',20);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values (5,15,'2025-01-16',25);

--videojuegos
create table plataformas(
	id_plataforma INT ,
	nombre_plataforma  varchar(50) not null,
	codigo_videojuego INT,
	constraint id_plataforma_pk primary key(id_plataforma),
	foreign key(codigo_videojuego)
	references videojuegos(codigo)
)

select * from videojuegos

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (1,'tboi',null,9);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (2,'God of war','Guerra',8);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (3,'castlevania',null,9);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (4,'pokemon RF','mostruos de bolsillo',7);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (5,'Destini','no se si es un juego',8);

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values (1,'Nintendo Switch2',1);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values (2,'Nintendo Switch',2);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values (3,'PC',3);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values (4,'Xbox',4);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values (5,'PS',5);

-- estudiantes

create table profesores(
	codigo INT,
	nombre varchar(50) not null,
	constraint profesores_pk primary key(codigo)
)
alter table estudiantes
add  codigo_profesor int

alter table estudiantes
add constraint codigo_profesor_fk
foreign key (codigo_profesor)
references profesores(codigo)

select * from estudiantes

insert into profesores(codigo,nombre)
values (1,'Francisco');
insert into profesores(codigo,nombre)
values (2,'Maria');
insert into profesores(codigo,nombre)
values (3,'Alan');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0102030405','Luis','Naranjo','luis.gonzalez@email.com','2002-04-15',1);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0203040506','Ana','Navarrete','ana.martinez@email.com','2003-09-21',2);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0304050607','Carlos','Nunez','carlos.rojas@email.com','2001-12-03',1);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0405060708','María','Nieto','maria.lopez@email.com','2002-07-09',3);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0506070809','Javier','Nevárez','javier.herrera@email.com','2000-01-25',2);

--registros_entrada
CREATE TABLE empleado (
    codigo_empleado char(10) not null,
    nombre varchar(25) not null,
    fecha DATE not null,
    hora TIME not null,
	constraint empleado_pk primary key(codigo_empleado)
)
select * from registros_entrada

alter table registros_entrada
add constraint codigo_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado);

insert into empleado(codigo_empleado,nombre,fecha,hora)
values (1234567891,'Luis','2023-07-01','07:35');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (1234567892,'Maria','2023-07-01','14:00');

insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (1,1234567891,'Ramires','2023-08-05','08:15');
insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (2,1234567892,'Perez','2023-08-06','09:00');
insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (3,1234567891,'Ramires','2023-09-07','08:45');
insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (4,1234567892,'Perez','2023-09-08','10:30');
insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (5,1234567891,'Ramires','2023-10-09','15:15');
insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (6,1234567892,'Perez','2023-10-01','11:11');
insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (7,1234567891,'Ramires','2023-11-02','12:12');
insert into registros_entrada(codigo_registro,codigo_empleado,apellido,fecha,hora)
values (8,1234567892,'Perez','2023-11-03','13:13');

--personas

select * from personas
create table prestamo(
	id_prestamo int not null,
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamos primary key(id_prestamo),
	foreign key(cedula)
	references personas(cedula)
)

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values ('1234567891','Sean','Perez','U');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values ('1234567893','Isaac','Punina','C');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values ('1234567894','Steven','Jacome','U');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values ('1234567895','Monica','Soto','C');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values ('1234567896','Mateo','Pelaes','U');

insert into prestamo(id_prestamo,cedula,monto,fecha_prestamo,hora_prestamo)
values (1,'1234567891',700.25,'2025-10-01','08:50');
insert into prestamo(id_prestamo,cedula,monto,fecha_prestamo,hora_prestamo)
values (2,'1234567892',500.43,'2025-10-02','08:50');
insert into prestamo(id_prestamo,cedula,monto,fecha_prestamo,hora_prestamo)
values (3,'1234567893',150.32,'2025-10-03','08:50');
insert into prestamo(id_prestamo,cedula,monto,fecha_prestamo,hora_prestamo)
values (4,'1234567894',230.15,'2025-10-04','08:50');
insert into prestamo(id_prestamo,cedula,monto,fecha_prestamo,hora_prestamo)
values (5,'1234567895',120.55,'2025-10-05','08:50');

--transacciones
select * from transacciones
create table banco(
	codigo_banco INT,
	codigo_transaccion INT,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco),
	foreign key(codigo_transaccion)
	references transacciones(codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1,'22001',100.2,'C','2025-10-10','05:02');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2,'22002',100.2,'C','2025-10-11','05:03');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (3,'22003',100.2,'C','2025-10-12','05:04');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (4,'22004',100.2,'D','2025-10-13','05:05');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5,'22005',100.2,'D','2025-10-14','05:06');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1,1,null);
insert into banco(codigo_banco,codigo_transaccion,detalle)
values (2,2,'¯\_(ツ)_/¯');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values (3,3,null);
insert into banco(codigo_banco,codigo_transaccion,detalle)
values (4,4,'no se');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values (5,5,null);