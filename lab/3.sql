select nombre, apellido, trunc(months_between(SYSDATE, dianacimiento) /12, 0) annos, subalternos, subalternas
from (select jefe.nombre, jefe.apellido,  sum(case sub.sexo
                                            when 'M' THEN 1
                                            ELSE 0
                                            END) subalternos,
                                        sum(case sub.sexo
                                            when 'F' THEN 1
                                            ELSE 0
                                            END) subalternas,
            jefe.dianacimiento, jefe.sexo
        from empleados sub
        join empleados jefe on (sub.idjefe = jefe.idemp)
        where sub.idjefe is not null
        group by sub.idjefe, jefe.nombre, jefe.apellido, jefe.dianacimiento, jefe.sexo
        order by dianacimiento desc)
where sexo = 'F' and rownum <=3
/
