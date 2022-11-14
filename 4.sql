select nombre|| ' ' ||apellido "nombre", salario, LENGTH(nombre) "Logintud nombre",
	case when length(concat(nombre,apellido)) >= 6  and length(concat(nombre,apellido)) <= 10
		then 'Corto'
	when length(concat(nombre,apellido)) >= 11  and length(concat(nombre,apellido)) <=14
		then 'Medio'
	when length(concat(nombre,apellido)) >= 15  and length(concat(nombre,apellido)) <= 20
		then 'Largo'
	end "leyenda"
from empleados
where lower(nombre) like '%a' or lower(nombre) like '%o'
/
