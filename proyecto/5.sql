SELECT c.nombre, count(1) "descargas"
FROM clientes c
JOIN descargas d on (c.id = d.idcliente)
group by c.nombre
/
