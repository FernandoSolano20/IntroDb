select apellido, nombre, trunc(months_between(SYSDATE, diaingreso) /12, 0) year,
trunc(mod(months_between(sysdate,diaingreso),12)) month,
trunc(sysdate - add_months(diaingreso, trunc(trunc(months_between(SYSDATE, diaingreso))))) day,
trunc(months_between(SYSDATE,dianacimiento)/12) old
from empleados
order by old
/
