--productos

select * from productos 
where nombre like 'Q%'

select * from productos 
where descripcion is null

select * from productos
where precio
between money(2) and money(3)

--cuentas
select numero_cuenta,saldo from cuentas

select * from cuentas
where fecha_creacion
between '13/06/2025' and '13/04/2025'

select numero_cuenta,saldo from cuentas
where fecha_creacion
between '13/06/2025' and '13/04/2025'

--registros_entrada

select codigo_empleado,fecha,hora from registros_entrada

select * from registros_entrada
where hora
between '7:00:00' and '14:00:00'

select * from registros_entrada
where hora > '8:00:00'

--videojuegos
select * from videojuegos
where nombre like 'C%'

select * from videojuegos
where valoracion 
between 9 and 10

select * from videojuegos where descripcion is null

--transacciones
select * from transacciones
where tipo ='D'

select * from transacciones
where monto
between money(200) and money(2000)

select codigo,monto,tipo,fecha from transacciones 
where fecha is not null