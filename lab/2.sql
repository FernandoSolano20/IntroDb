select nombre, apellido, to_char(dianacimiento, 'mm') mes, trunc(months_between(SYSDATE, dianacimiento) /12, 0) annos,
    trunc((select AVG(trunc(months_between(SYSDATE, dianacimiento) /12, 0))
        from empleados
        where to_char(dianacimiento, 'mm') = to_char(e.dianacimiento, 'mm'))) prom
from empleados e
where trunc(months_between(SYSDATE, dianacimiento) /12, 0) > trunc((select AVG(trunc(months_between(SYSDATE, dianacimiento) /12, 0))
        from empleados
        where to_char(dianacimiento, 'mm') = to_char(e.dianacimiento, 'mm')))
/
