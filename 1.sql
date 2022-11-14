select IDOFICINA, IDPAIS, CIUDAD, LENGTH(direccion) "# Letras direccion"
from oficinas
where NOT LOWER(CIUDAD) LIKE '%a%'
order by ciudad
/
