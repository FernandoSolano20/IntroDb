select main.nombre, main.apellido, to_char(main.dianacimiento, 'yyyy') nacimiento, (case
                                                                        main.idemp when (select idemp from empleados
                                                                                    where idemp in (select distinct idjefe
                                                                                                    from empleados
                                                                                                    where idjefe is not null and main.idemp = idjefe)
                                                                                    INTERSECT
                                                                                    select idemp from empleados
                                                                                    where idemp in (select distinct iddirector
                                                                                                    from departamentos
                                                                                                    where iddirector is not null and main.idemp = iddirector))
                                                                                                    THEN  'DJ'
                                                                                when (select idemp from empleados
                                                                                    where idemp in (select distinct idjefe
                                                                                                    from empleados
                                                                                                    where idjefe is not null and main.idemp = idjefe))
                                                                                    THEN 'J'
                                                                                ELSE 'D' end) TipoGerencia
from (select idemp, nombre, apellido, dianacimiento
        from empleados
        where idemp in (select idemp from empleados
                        where idemp in (select distinct idjefe
                                        from empleados
                                        where idjefe is not null)
                        UNION ALL
                        select idemp from empleados
                        where idemp in (select distinct iddirector
                                        from departamentos
                                        where iddirector is not null) )) main
where SUBSTR(to_char(main.dianacimiento,'yyyy'),3,1) = (select decada
                                                    from (select SUBSTR(to_char(dianacimiento,'yyyy'),3,1) decada, count(1) contador
                                                            from empleados
                                                            where idemp not in (select idemp from empleados
                                                                                    where idemp in (select distinct idjefe
                                                                                                    from empleados
                                                                                                    where idjefe is not null))
                                                            group by SUBSTR(to_char(dianacimiento,'yyyy'),3,1)
                                                            order by contador desc)
                                                    where rownum <= 1)
order by main.apellido, main.nombre
/
