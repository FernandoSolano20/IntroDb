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
/
