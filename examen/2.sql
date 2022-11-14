UPDATE empleados
SET idjefe = (select iddirector
                from departamentos
                where nombre = 'Sistemas')
where idemp = (select idemp
                from (select e.idemp
                        from empleados e
                        join puestos p on (e.idpuesto = p.idpuesto)
                        where p.titulo = 'Programador'
                        order by e.dianacimiento asc)
                where rownum <= 1)
/
