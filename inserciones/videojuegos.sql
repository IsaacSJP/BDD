-- script 5
create table videojuegos (
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values ('1231','Minecraft','aventura, creacion',1);

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values ('1232','Fortnite','todos vs todos',2);

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values ('1233','Among Us','encontre un cuerpo',3);

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values ('1234','Mario Kart','carreras pero de mario',4);

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values ('1235','Call of Duty','no se ¯\_(ツ)_/¯',5);

insert into videojuegos (codigo,nombre,valoracion)
values ('1236','The Legend of Zelda',6);

insert into videojuegos (codigo,nombre,valoracion)
values ('1237','Roblox',7);

insert into videojuegos (codigo,nombre,valoracion)
values ('1238','Grand Theft Auto V',8);

select * from videojuegos