select departamento, director, subalternos, 'Top Empleados' top
from (select dep.nombre departamento, dic.nombre director, sub.iddep, count(1) subalternos
                                from empleados sub
                                join departamentos dep on (dep.iddep = sub.iddep)
                                join empleados dic on (dep.iddirector = dic.idemp)
                                group by sub.iddep, dep.nombre, dic.nombre
                                order by subalternos desc)
where rownum <= 1
UNION
select departamento, director, subalternos, 'Top Salarios' top
from (select dep.nombre departamento, dic.nombre director, sub.iddep, count(1) subalternos
                                from empleados sub
                                join departamentos dep on (dep.iddep = sub.iddep)
                                join empleados dic on (dep.iddirector = dic.idemp)
                                where sub.salario = (select max(salario)
                                                from empleados)
                                group by sub.iddep, dep.nombre, dic.nombre
                                order by subalternos desc)
where rownum <= 1
UNION
select departamento, director, subalternos, 'Top antiguo' top
from (select dep.nombre departamento, dic.nombre director, sub.iddep, count(1) subalternos
                                from empleados sub
                                join departamentos dep on (dep.iddep = sub.iddep)
                                join empleados dic on (dep.iddirector = dic.idemp)
                                where sub.diaingreso = (select min(diaingreso)
                                                from empleados)
                                group by sub.iddep, dep.nombre, dic.nombre
                                order by subalternos asc)
where rownum <= 1
/
