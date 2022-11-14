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



SELECT s.sagapelicula NOMBRE, g.tipo, to_char(p.anno, 'yyyy') "ANNO"
FROM sagas s
JOIN peliculas p on (s.id = p.idsaga)
JOIN generos g ON (g.tipo = p.idgenero)





SELECT v.nombre, a.nombreArtistico "Nombre Artistico"
FROM videosmusicales v
JOIN artistas a on (v.idartista = a.id)
order by a.nombreArtistico



SELECT v.nombre, g.tipo "Genero musical"
FROM videosmusicales v
JOIN generos g on (g.tipo = v.idgenero)
order by g.tipo




SELECT c.nombre, count(1) "descargas"
FROM clientes c
JOIN descargas d on (c.id = d.idcliente)
group by c.nombre





SELECT titulo, cantidad
FROM (SELECT p.titulo, count(1) cantidad
        FROM descargas d
        JOIN formatopelicula f on (f.id = d.IDFORMATOPELICULA)
        JOIN peliculas p on (p.id = f.idpelicula)
        group by p.titulo
        order by cantidad desc)
WHERE rownum <= 5






SELECT titulo, reproducciones, serie, temporada, numero "# episodio"
FROM (SELECT e.titulo, count(1) reproducciones, s.titulo serie, t.numeroTemporada temporada, e.numero
        from reproducciones r
        JOIN episodios e on (r.idepisodio = e.id)
        JOIN temporadas t on (t.id = e.idtemporada)
        JOIN series s on (s.id = t.idSerie)
        group by e.titulo, s.titulo, t.numeroTemporada, e.numero
        order by reproducciones desc)
WHERE rownum <= 6







SELECT g.tipo,
        (SELECT count(1)
        from audiolibro a
        WHERE a.idgenero = g.tipo) "Audio Libro",
        (SELECT count(1)
        from peliculas p
        WHERE p.idgenero = g.tipo) "Peliculas",
        (SELECT count(1)
        from series s
        WHERE s.idgenero = g.tipo) "Series",
        (SELECT count(1)
        from documentales d
        WHERE d.idgenero = g.tipo) "Documentales",
        (SELECT count(1)
        from videosmusicales v
        WHERE v.idgenero = g.tipo) "Videos Musicales",
        (SELECT count(1)
        from tansmicionesenvivo t
        WHERE t.idgenero = g.tipo) "Transmiciones en vivo"
FROM generos g
group by g.tipo


