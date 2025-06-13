--productos
delete from productos
where descripcion is null

--cuentas 
delete from cuentas
where cedula_propietario like '10%'

--estudiantes
delete from estudiantes
where cedula like '%05'

--registros_entrada
delete from registros_entrada
where fecha
between '01/06/2025' and '30/06/2025'

--videojuegos
delete from videojuegos
where valoracion <7

--transacciones
delete from transacciones
where hora >='14:00' and hora <='18:00'and fecha>='01/08/2025' and fecha <='31/08/2025'