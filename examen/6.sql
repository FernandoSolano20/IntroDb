select nombre, apellido, edad, antiguedad, pais
from (select e.nombre, e.apellido, trunc(months_between(SYSDATE, dianacimiento) /12, 0) edad, trunc(months_between(SYSDATE, diaingreso) /12, 0) antiguedad, p.nombre pais
        from empleados e
        join departamentos d on (d.iddep = e.iddep)
        join oficinas o on (o.idoficina = d.idoficina)
        join paises p on (p.idpais = o.idpais)
        where idemp in (select distinct idjefe
                            from empleados
                            where idjefe is not null)
        and idemp not in (select distinct iddirector
                            from departamentos
                            where iddirector is not null)
        order by diaingreso desc)
where rownum <= 2
UNION
select nombre, apellido, edad, antiguedad, pais
from (select e.nombre, e.apellido, trunc(months_between(SYSDATE, dianacimiento) /12, 0) edad, trunc(months_between(SYSDATE, diaingreso) /12, 0) antiguedad, p.nombre pais
        from empleados e
        join departamentos d on (d.iddep = e.iddep)
        join oficinas o on (o.idoficina = d.idoficina)
        join paises p on (p.idpais = o.idpais)
        where idemp NOT IN (select distinct idjefe
                            from empleados
                            where idjefe is not null)
        order by dianacimiento desc)
where rownum <= 5
order by apellido, nombre
/
