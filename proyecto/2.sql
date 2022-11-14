SELECT s.sagapelicula NOMBRE, g.tipo, to_char(p.anno, 'yyyy') "ANNO"
FROM sagas s
JOIN peliculas p on (s.id = p.idsaga)
JOIN generos g ON (g.tipo = p.idgenero)
/
