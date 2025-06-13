select * from personas 
where hora_nacimiento 
between '6:00:00' and '12:00:00'

insert into personas (cedula,nombre,apellido,hora_nacimiento)
values ('2234567891','Santiago','Pujos','12:30:10');

insert into personas (cedula,nombre,apellido,hora_nacimiento)
values ('2234567892','Santiago','Paredes','6:10:58')

select * from personas 
where fecha_nacimiento 
between '01/01/2007' and '01/10/2007'

insert into personas (cedula,nombre,apellido,fecha_nacimiento)
values ('1234567891','Santiago','Pujos','10/03/2007');

insert into personas (cedula,nombre,apellido,fecha_nacimiento)
values ('1234567892','Santiago','Paredes','10/010/2007')

select * from personas 
where estatura <= 1.85

select numero_hijos,* from personas where numero_hijos=2

-- diferente a (!=)
select * from personas where estatura !=1.85