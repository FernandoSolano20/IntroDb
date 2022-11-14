select nombre,nvl(salario,0) salarioreal, 
       nvl2(salario,'SI','NO') "check", 
--       nullif(idemp,iddep) "iguales", 
--       coalesce(to_char(salario), to_char(bono),email,apellido) "datononulo"
--       if salario < 1000000 then 'Bajo' else 'Medio' "Nivel"
       case when salario < 1000000 then 'Bajo'
            when salario < 2000000 then 'Medio'
            when salario >= 2000000 then 'Alto'
            else 'No tiene'
       end "Nivel",
       case when  iddep in (10,20,30,50,80,140) then 'Comercial'
            else 'Operativo'
       end "Rol"
  from empleados
order by salario
/
