select a.nombre, 'Actor' "Rol",
                        (select count(1)
                        from artistas aa
                        join repartospelicula rp on (aa.id = rp.idArtista)
                        where aa.id = a.id) Peliculas,
                        (select count(1)
                        from artistas aa
                        join repartoserie rs on (aa.id = rs.idArtista)
                        where aa.id = a.id) Series,
                        min(to_char(p.anno)) "Primera pelicula",
                        min(to_char(s.anno)) "Primera serie"
from artistas a
full outer join repartospelicula rrp on (a.id = rrp.idArtista)
full outer join repartoserie rrs on (a.id = rrs.idArtista)
full outer join peliculas p on (rrp.idPelicula = p.id)
full outer join series s on (rrs.idSerie = s.id)
where (select count(1)
        from artistas aa
        join repartospelicula rp on (aa.id = rp.idArtista)
        where aa.id = a.id) <> 0
        or
        (select count(1)
        from artistas aa
        join repartoserie rs on (aa.id = rs.idArtista)
        where aa.id = a.id) <> 0
group by a.nombre, a.id
UNION
select a.nombre, 'Director' "Rol",
                        (select count(1)
                        from artistas aa
                        join peliculas pp on (aa.id = pp.idArtista)
                        where aa.id = a.id) "Peliculas",
                        (select count(1)
                        from artistas aa
                        join series ss on (aa.id = ss.idArtista)
                        where aa.id = a.id) "Series",
                        min(to_char(p.anno)) "Primera pelicula",
                        min(to_char(s.anno)) "Primera serie"
from artistas a
full outer join peliculas p on (a.id = p.idArtista)
full outer join series s on (a.id = s.idArtista)
where (select count(1)
        from artistas aa
        join peliculas pp on (aa.id = pp.idArtista)
        where aa.id = a.id) <> 0
        or
        (select count(1)
            from artistas aa
            join series ss on (aa.id = ss.idArtista)
            where aa.id = a.id) <> 0
group by a.nombre, a.id
order by nombre
/
