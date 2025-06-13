-- script 1
create table productos (
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (1231,'pantalon','blanco',5.5,101)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (1232,'camisa','verde',4.5,102)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (1233,'zapatos','negros',10.5,103)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (1234,'sombreros','grande',3.5,104)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (1235,'sacos','abierto',7.2,105)

insert into productos (codigo,nombre,precio,stock)
values (1236,'cajas',0.5,106)

insert into productos (codigo,nombre,precio,stock)
values (1237,'carton',0.5,107)

insert into productos (codigo,nombre,precio,stock)
values (1238,'estante',0.5,108)

select * from productos 