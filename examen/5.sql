UPDATE empleados
set iddep = (select iddep
                from (select d.iddep
                        from departamentos d
                        where iddep not in (select distinct iddep
                                            from empleados
                                            where iddep is not null))
                where rownum <= 1),
    salario = (salario + salario * 0.25)
where idemp in (select idemp
                from (select idemp
                        from empleados
                        order by salario asc)
                where rownum <= 4)
/
