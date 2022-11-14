select d.nombre, dir.apellido, sum(1) "cantidad empleados", sum(e.salario) "salario"
from departamentos d
join empleados dir on (d.iddirector = dir.idemp)
join empleados e on (e.iddep = d.iddep)
group by d.nombre, dir.apellido
/
