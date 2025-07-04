select pe.cedula,pe.nombre,pe.apellido,ec.descripcion from 
personas pe,estado_civil ec
where 
pe.estado_civil_codigo = ec.codigo and nombre like 'S%'

--usuarios y cuentas

select cu.numero_cuenta,us.nombre from
usuarios us,cuentas cu
where cu.saldo <=money(100) and cu.saldo >=money(1000)
select * from
usuarios us,cuentas cu
where cu.fecha_creacion
between '2022-09-21' and '2023-09-21'
-- clientes y compras
select * from clientes
select * from compras

select nombre,apellido from clientes
where cedula like '%7%'

select * from clientes
where cedula = '1234567894'

--estudiantes y profesores
select * from estudiantes
select * from profesores

select es.codigo_profesor,es.nombre,es.apellido from
estudiantes es
where es.apellido like '%n%'

select * from
estudiantes es,profesores pro
where pro.nombre ='Francisco'

--personas y prestamo
select * from personas
select * from prestamo

select per.cantidad_ahorrada,mo.monto,mo.garante from 
personas per,prestamo mo
where mo.monto <=money(100) and mo.monto >=money(1000)

select * from personas
where personas.cedula ='1234567891'

--productos y ventas
select * from productos
select * from ventas

select pro.nombre,pro.stock,ven.cantidad from
productos pro,ventas ven
where pro.nombre like '%m%' or pro.descripcion =null--0 is null?

select pro.nombre,pro.stock from
productos pro,ventas ven
where ven.cantidad = 5 and ven.codigo_producto = pro.codigo

--transacciones y banco
select * from transacciones
select * from banco

select * from 
transacciones tra,banco ban
where tra.codigo = ban.codigo_transaccion and tra.tipo = 'C' and tra.numero_cuenta between '22001' and '22004'

select * from 
transacciones tra,banco ban
where tra.codigo = ban.codigo_transaccion and ban.codigo_banco =1

--videojuegos y plataformas
select * from videojuegos
select * from plataformas

select vid.nombre,vid.descripcion,pla.nombre_plataforma from
videojuegos vid,plataformas pla
where vid.codigo = pla.codigo_videojuego 
and (vid.descripcion='Guerra' and vid.valoracion >=7)
or ((vid.nombre like 'C%' or vid.nombre like 'D%') and vid.valoracion >=8) 

select pla.id_plataforma,pla.nombre_plataforma,pla.codigo_videojuego from
videojuegos vid,plataformas pla
where vid.nombre='God of war' and vid.codigo = pla.codigo_videojuego

--registrso_entrada y empleado
select * from registros_entrada
select * from empleado

select r_e.codigo_empleado,r_e.fecha,r_e.apellido from
registros_entrada r_e,empleado em
where em.codigo_empleado = r_e.codigo_empleado and ((r_e.fecha between '2023-08-01' and '2023-08-31')and r_e.codigo_empleado like '17%' and r_e.hora between '08:00' and '12:00') 
or ((r_e.fecha between '2023-10-06' and '2023-10-20')and r_e.codigo_empleado like '08%' and r_e.hora between '09:00' and '13:00')


select r_e.codigo_registro,r_e.apellido from
registros_entrada r_e,empleado em
where em.codigo_empleado = r_e.codigo_empleado and r_e.codigo_registro='2201'