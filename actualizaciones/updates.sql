-- productos
update productos set stock=0
where descripcion is null

-- cuentas
update cuentas set saldo=10
where cedula_propietario like '17%'

--estudiantes
update estudiantes set apellido='Hernandez'
where cedula like '17%'

--registros_entradas
update registros_entrada set codigo_empleado = '0823456789'
where fecha
between '01/08/2025' and '31/08/2025'

--videojuegos
update videojuegos set valoracion ='Mejor Puntuado'
where valoracion > 9

--transacciones
update transacciones set tipo='T'
where monto>= money(100) and monto <= money(500) and fecha >'01/09/2025' and fecha <'30/09/2025'and hora>='14:00' and hora <='20:00'