select c.nombre,
                (select sum(ee.salario)
                from empleados ee
                join departamentos dd on (dd.iddep = ee.iddep)
                join oficinas oo on (oo.idoficina = dd.idoficina)
                join paises pp on (pp.idpais = oo.idpais)
                join continentes cc on (cc.idcont = pp.idcont)
                where cc.idcont = c.idcont
                and ee.idemp not in (select distinct idjefe
                                from empleados
                                where idjefe is not null)) "total salario subalterno",
                (select sum(ee.salario)
                from empleados ee
                join departamentos dd on (dd.iddep = ee.iddep)
                join oficinas oo on (oo.idoficina = dd.idoficina)
                join paises pp on (pp.idpais = oo.idpais)
                join continentes cc on (cc.idcont = pp.idcont)
                where ee.idemp in (select distinct idjefe
                                from empleados
                                where idjefe is not null)
                and cc.idcont = c.idcont) "total salario jefes",
                sum(1) "total empleados",
                max(e.salario) Maximo,
                min(e.salario) minimo
from continentes c
join paises p on (p.idcont = c.idcont)
join oficinas o on (o.idpais = p.idpais)
join departamentos d on (d.idoficina = o.idoficina)
join empleados e on (e.iddep = d.iddep)
group by c.nombre, c.idcont
/
