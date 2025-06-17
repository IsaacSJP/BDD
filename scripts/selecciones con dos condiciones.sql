select * from personas
where nombre='Isaac' and apellido='Jacome'

select * from personas
where nombre='Isaac' or nombre='Steven'


select * from personas 
where (nombre='Isaac' or nombre='Steven') and (estatura is null or estatura >1.5)