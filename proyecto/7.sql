SELECT titulo, reproducciones, serie, temporada, numero "# episodio"
FROM (SELECT e.titulo, count(1) reproducciones, s.titulo serie, t.numeroTemporada temporada, e.numero
        from reproducciones r
        JOIN episodios e on (r.idepisodio = e.id)
        JOIN temporadas t on (t.id = e.idtemporada)
        JOIN series s on (s.id = t.idSerie)
        group by e.titulo, s.titulo, t.numeroTemporada, e.numero
        order by reproducciones desc)
WHERE rownum <= 6
/
