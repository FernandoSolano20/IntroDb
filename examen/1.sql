UPDATE empleados
 SET idjefe = (select idemp
                from (select e.idemp
                        from empleados e
                        join puestos p on (e.idpuesto = p.idpuesto)
                        where p.titulo = 'Programador'
                        order by e.dianacimiento asc)
                where rownum <= 1)
where idemp in (select e.idemp
                    from empleados e
                    join puestos p on (e.idpuesto = p.idpuesto)
                    where p.titulo = 'Programador')
/
