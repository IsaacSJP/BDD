create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono char(10) not null,
	constraint provedores_pk primary key (codigo)
)

create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	precio money not null,
	constraint producto_fk foreign key (pp_codigo_producto) references productos (codigo),
	constraint proveedor_fk foreign key (pp_codigo_proveedor)references proveedores (codigo),
	constraint productos_por_proveedor_pk primary key(pp_codigo_producto,pp_codigo_proveedor)
)

insert into productos(codigo,nombre,stock)
values(100,'Doritos',100);
insert into productos(codigo,nombre,stock)
values(200,'kchitos',200);
insert into productos(codigo,nombre,stock)
values(300,'Papas',300);
insert into productos(codigo,nombre,stock)
values(400,'Takis',0);
select * from productos

insert into proveedores(codigo,nombre,telefono)
values(1,'Snacks SA','0978986655');
insert into proveedores(codigo,nombre,telefono)
values(2,'Distrisnacks','0978986456');

select * from proveedores;

insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(300,1,0.48);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(300,2,0.49);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(100,1,0.50);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(200,1,0.51);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(400,2,0.50);

select * from productos_por_proveedor;

select prod.codigo,prod.nombre,prov.nombre,pp.precio from 
productos prod,proveedores prov,productos_por_proveedor pp
where pp.pp_codigo_producto =prod.codigo
and pp.pp_codigo_proveedor=prov.codigo
and prod.codigo=300

--1
create table usuarios(
	id_usuario int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id_usuario)
)
create table grupo(
	id_grupo int not null,
	nombre varchar(25) not null,
	descripcion varchar(75) not null,
	fecha_creacion date,
	constraint grupo_pk primary key (id_grupo)
)
create table usuaris_grupo(
	us_id int not null,
	gr_id int not null,
	precio money not null,
	constraint usuarios_fk foreign key (us_id) references usuarios (id_usuario),
	constraint grupo_fk foreign key (gr_id)references grupo (id_grupo),
	constraint usuaris_grupo_pk primary key(us_id,gr_id)
)
--2
create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)
create table huespedes(
	id_huespedes int not null,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key (id_huespedes)
)
create table reservas(
	inicio_fecha date not null,
	fin_fecha date not null,
	habitacion int not null,
	huesped_id int not null,
	constraint habitaciones_fk foreign key (habitacion) references habitaciones (habitacion_numero),
	constraint huespedes_fk foreign key (huesped_id)references huespedes (id_huespedes),
	constraint reservas_pk primary key(habitacion,huesped_id)
)
--3
create table ciudad(
	id_ciudad int not null,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key(id_ciudad)
)
create table municipio(
	id_municipio int not null,
	nombre varchar(45) not null,
	ciudad_id int not null,
	constraint municipio_pk primary key(id_municipio),
	constraint ciudad_fk foreign key (ciudad_id) references ciudad (id_ciudad)
)
create table proyecto(
	id_proyecto int not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key(id_proyecto)
)
create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key (municipio_id) references municipio (id_municipio),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto (id_proyecto),
	constraint proyecto_municipio_pk primary key(municipio_id,proyecto_id)
)
--consultas
select * from usuarios
select * from grupo
select * from usuaris_grupo
select usu.nombre,gru.nombre from
usuarios usu,grupo gru,usuaris_grupo ug
where ug.us_id=usu.id_usuario
and ug.gr_id=gru.id_grupo

select ug.us_id from
usuarios usu,grupo gru,usuaris_grupo ug
where ug.us_id=usu.id_usuario
and ug.gr_id=gru.id_grupo
and ug.gr_id=1

select gru.nombre, count(ug.us_id) from
grupo gru,usuaris_grupo ug
where ug.gr_id=gru.id_grupo
group by gru.nombre

--2
select usu.nombre,gru.nombre from
usuarios usu,grupo gru,usuaris_grupo ug
where ug.us_id=usu.id_usuario
and ug.gr_id=gru.id_grupo
and gru.nombre like '%intensivo%'

select usu.nombre,ug.gr_id from
usuarios usu,usuaris_grupo ug
where ug.us_id=usu.id_usuario
and ug.gr_id =2

select max(ug.us_id),min(ug.us_id),gru.nombre from
usuarios usu,grupo gru,usuaris_grupo ug
where ug.gr_id=gru.id_grupo
group by gru.nombre

select usu.nombre,gru.nombre from
usuarios usu,grupo gru,usuaris_grupo ug
where ug.us_id=usu.id_usuario
and ug.gr_id=gru.id_grupo
and gru.fecha_creacion between '2020-03-08' and '2022-03-08'

select usu.nombre from
usuarios usu,grupo gru,usuaris_grupo ug
where ug.us_id=usu.id_usuario
and ug.gr_id=gru.id_grupo
and gru.id_grupo=3

select count(ug.us_id) from
grupo gru,usuaris_grupo ug
where ug.gr_id=gru.id_grupo
and gru.descripcion like '%matutino%'
group by gru.descripcion
--habitaciones y huespedes
select * from habitaciones
select * from huespedes
select * from reservas

select ha.habitacion_numero,hu.nombres,hu.apellidos from
habitaciones ha,huespedes hu,reservas re
where re.habitacion=ha.habitacion_numero
and re.huesped_id=hu.id_huespedes

select hu.nombres,hu.apellidos from
huespedes hu,reservas re
where re.huesped_id=hu.id_huespedes
and re.habitacion=2

select ha.habitacion_numero,count(re.huesped_id) from
habitaciones ha,reservas re
where re.habitacion=ha.habitacion_numero
group by ha.habitacion_numero

select ha.habitacion_numero,ha.piso,hu.nombres,hu.apellidos from
habitaciones ha,huespedes hu,reservas re
where re.habitacion=ha.habitacion_numero
and re.huesped_id=hu.id_huespedes
and ha.piso=4

select ha.habitacion_numero,avg(re.huesped_id) from
habitaciones ha,reservas re
where re.habitacion=ha.habitacion_numero
group by  ha.habitacion_numero

select hu.nombres,hu.apellidos from
huespedes hu,reservas re
where re.habitacion=4
and re.huesped_id=hu.id_huespedes

select ha.habitacion_numero,sum(ha.precio_por_noche) from
habitaciones ha,reservas re
group by habitacion_numero
--municipio y proyecto
select * from proyecto
select * from municipio
select * from proyecto_municipio

select * from 
proyecto pro,municipio mun,proyecto_municipio pm
where pm.municipio_id = mun.id_municipio
and pm.proyecto_id = pro.id_proyecto

select pro.proyecto from 
proyecto pro,proyecto_municipio pm
where pm.proyecto_id = pro.id_proyecto
and pm.municipio_id=1

select mun.nombre,count(*) from 
municipio mun,proyecto_municipio pm
where pm.municipio_id = mun.id_municipio
group by mun.nombre

select mun.nombre,pro.proyecto from 
proyecto pro,municipio mun,proyecto_municipio pm
where pm.municipio_id = mun.id_municipio
and pm.proyecto_id = pro.id_proyecto
and mun.nombre like '%GAD%'

select mun.nombre,min(pm.proyecto_id) from 
municipio mun,proyecto_municipio pm
where pm.municipio_id = mun.id_municipio
group by mun.nombre

select pro.proyecto from 
proyecto pro,proyecto_municipio pm
where pm.proyecto_id = pro.id_proyecto
and pm.municipio_id=3

select mun.nombre,max(pm.proyecto_id) from 
municipio mun,proyecto_municipio pm
where pm.municipio_id = mun.id_municipio
group by mun.nombre