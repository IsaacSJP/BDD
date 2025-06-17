--productos

select * from productos
where stock =10 and precio < money(10)

select nombre,stock from productos
where nombre like '%m%' or descripcion like '% %'

select nombre from productos
where descripcion is null or stock =0
--cuentas
select numero_cuenta,saldo from cuentas
where saldo >money(100) and saldo <money(1000)

select * from cuentas
where fecha_creacion
between '17/06/2025' and '17/06/2024'

select * from cuentas
where saldo=money(0) or cedula_propietario like '%2'

--estudiantes
select nombre,apellido from estudiantes
where nombre like 'M%' or apellido like '%z'

select nombre from estudiantes
where cedula like '%34%' and cedula like '18%'

select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'

--registros_entrada
select * from registros_entrada
where (fecha >'01/09/2025' and fecha<'30/09/2025')or codigo_empleado like '17%'

select * from registros_entrada
where fecha >'01/08/2025' and fecha<'30/08/2025' and codigo_empleado like '17%' and hora >'8:00' and hora < '12:00'

select * from registros_entrada
where (fecha >'01/08/2025' and fecha<'30/08/2025' and codigo_empleado like '17%' and hora >'8:00' and hora < '12:00')or (fecha >'01/09/2025' and fecha<'30/09/2025' and codigo_empleado like '08%' and hora >'9:00' and hora < '13:00')

--videojuegos
select * from videojuegos
where nombre like '%c%' or valoracion =7

select * from videojuegos
where (codigo >3 and codigo<7 )or valoracion =7

select * from videojuegos
where (descripcion like '%guerra%' and valoracion >7 and nombre like 'C%')or (valoracion >8 and nombre like 'D%')

--transacciones
select * from transacciones
where tipo ='C' and numero_cuenta >=2220001 and numero_cuenta <=2220004

select * from transacciones
where tipo ='D' and fecha='25/05/2025' and numero_cuenta >=2220007 and numero_cuenta <=2220010

select * from transacciones
where codigo >=1 and codigo <=5 and numero_cuenta >=2220001 and numero_cuenta <=2220004 and (fecha ='26/05/2025' or fecha ='29/05/2025')