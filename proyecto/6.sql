SELECT titulo, cantidad
FROM (SELECT p.titulo, count(1) cantidad
        FROM descargas d
        JOIN formatopelicula f on (f.id = d.IDFORMATOPELICULA)
        JOIN peliculas p on (p.id = f.idpelicula)
        group by p.titulo
        order by cantidad desc)
WHERE rownum <= 5
/
