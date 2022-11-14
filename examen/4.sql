UPDATE empleados
SET idpuesto = 'DG01'
where idemp in (select idemp
                from empleados
                where idemp in (select distinct iddirector
                                from departamentos
                                where iddirector is not null))
/
