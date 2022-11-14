select nombre, apellido, to_char(dianacimiento,'day') dia, to_char(dianacimiento,'dd') "dia mes",  to_char(dianacimiento,'mm') "mes"
from empleados
where SUBSTR(to_char(dianacimiento,'yyyy'),3,1) in ('5','7','9')
/
