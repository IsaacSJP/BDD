--count

select *from personas

select count(apellido) from personas
where estado_civil_codigo='C'

select count(*) from 
personas per,estado_civil ec
where per.estado_civil_codigo = ec.codigo and estado_civil_codigo='C'
--avg promedio
select avg(cast(cantidad_ahorrada as numeric)) from personas

select avg(cast(cantidad_ahorrada as numeric)) from personas
where estado_civil_codigo='C'
--sum,max,min suma ,valor maximi,valor minimo
select sum(cast(cantidad_ahorrada as numeric)) from personas

select max(cast(cantidad_ahorrada as numeric)) from personas
where estado_civil_codigo='C'
-- group by

select estado_civil_codigo,count(*)  from personas
group by estado_civil_codigo

--cuentas usuarios
select *from usuarios
select *from cuentas

select avg(cast(saldo as numeric)) from cuentas
where cedula_propietario='12341'


select tipo_cuenta,count(*)  from cuentas 
group by tipo_cuenta

--clientes compras

select *from clientes
select *from compras
select sum(cast (monto as numeric)) from compras
group by cedula

select fecha_compra,count(*) from compras
group by fecha_compra
--estudiantes profesores
select *from estudiantes
select *from profesores

select codigo_profesor,count(*) from estudiantes
group by codigo_profesor

select round(avg(extract(year from current_date)-extract(year from fecha_nacimiento))) as edad_promedio from estudiantes
--personas prestamos
select *from personas
select *from prestamo

select cedula,sum(cast (monto as numeric)) from prestamo
group by cedula

select count(*) as total_personas from personas
where numero_hijos >1

--productos y ventas
select *from productos
select *from ventas
select max(precio) from productos
select sum(cantidad)as cantidad_de_ventas from ventas
--transacciones y banco
select *from transacciones
select *from banco

select count(*)from transacciones
where tipo ='C'
select numero_cuenta, round(avg(cast(monto as decimal)),2)as promedio_monto from transacciones
group by numero_cuenta
--videojuegos y plataformas
select *from videojuegos
select *from plataformas
select codigo_videojuego,count(*)as plataformas from plataformas
group by codigo_videojuego
select round(avg(valoracion)) as promedio_valoracion from videojuegos
--registros_entrada y empleado
select *from registros_entrada
select *from empleado
select codigo_empleado,count(*)from registros_entrada
group by codigo_empleado

select max(fecha)as fecha_maxima,min(fecha)as fecha_minima from registros_entrada