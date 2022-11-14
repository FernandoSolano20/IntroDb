SELECT p.titulo, g.tipo GENERO, to_char(p.anno, 'yyyy') "ANNO"
FROM peliculas p
JOIN generos g on (p.idgenero = g.tipo)
UNION
SELECT s.titulo, g.tipo GENERO, to_char(s.anno, 'yyyy') "ANNO"
FROM series s
JOIN generos g on (s.idgenero = g.tipo)
UNION
SELECT a.titulo, g.tipo GENERO, to_char(a.fecha, 'yyyy') "ANNO"
FROM audiolibro a
JOIN generos g on (a.idgenero = g.tipo)
order by GENERO, ANNO
/
