select a.titulo "titulo", 'Audio libro' "tipo", (select count(1)
                                        from audiolibro aa
                                        join Reproducciones r on (aa.id = r.idaudiolibro)
                                        where aa.id = a.id) "reproducciones",
                                        (select count(1)
                                        from audiolibro aa
                                        join formatoaudiolibro fa on (aa.id = fa.idAudioLibro)
                                        join descargas d on (fa.id = d.idFormatoAudioLibro)
                                        where aa.id = a.id) "descargas",
                                        max(rr.fechainicio) "ultima reproduccion",
                                        max(dd.fechainicio) "ultima descarga"
from audiolibro a
full outer join Reproducciones rr on (a.id = rr.idaudiolibro)
full outer join formatoaudiolibro faa on (a.id = faa.idAudioLibro)
full outer join descargas dd on (faa.id = dd.idFormatoAudioLibro)
where a.id is not null
group by a.titulo, a.id, 'Audio libro'
UNION
select p.titulo "titulo", 'Peliculas' "tipo", (select count(1)
                                        from peliculas pp
                                        join Reproducciones rr on (pp.id = rr.idpelicula)
                                        where pp.id = p.id) "reproducciones",
                                        (select count(1)
                                        from audiolibro pp
                                        join formatopelicula ppf on (pp.id = ppf.idpelicula)
                                        join descargas dd on (ppf.id = dd.idFormatoPelicula)
                                        where pp.id = p.id) "descargas",
                                        max(r.fechainicio) "ultima reproduccion",
                                        max(d.fechainicio) "ultima descarga"
from peliculas p
full outer join Reproducciones r on (p.id = r.idpelicula)
full outer join formatopelicula pf on (p.id = pf.idPelicula)
full outer join descargas d on (pf.id = d.idFormatoPelicula)
where p.id is not null
group by p.titulo, p.id, 'Peliculas'
UNION
select v.nombre "titulo", 'Videos Musicales' "tipo", (select count(1)
                                        from videosmusicales vv
                                        join Reproducciones rr on (vv.id = rr.idVideosMusical)
                                        where vv.id = v.id) "reproducciones",
                                        (select count(1)
                                        from videosmusicales vv
                                        join FormatoVideoMusical vvf on (vv.id = vvf.idVideosMusical)
                                        join descargas dd on (vvf.id = dd.idFormatoMusical)
                                        where vv.id = v.id) "descargas",
                                        max(r.fechainicio) "ultima reproduccion",
                                        max(d.fechainicio) "ultima descarga"
from videosmusicales v
full outer join Reproducciones r on (v.id = r.idVideosMusical)
full outer join FormatoVideoMusical vf on (v.id = vf.idVideosMusical)
full outer join descargas d on (vf.id = d.idFormatoMusical)
where v.id is not null
group by v.nombre, v.id, 'Videos Musicales'
UNION
select t.titulo "titulo", 'Transmiciones vivo' "tipo", (select count(1)
                                        from TansmicionesEnVivo tt
                                        join Reproducciones rr on (tt.id = rr.idTansmicionesEnVivo)
                                        where tt.id = t.id) "reproducciones",
                                        0 "descargas",
                                        max(r.fechainicio) "ultima reproduccion",
                                        null "ultima descarga"
from TansmicionesEnVivo t
full outer join Reproducciones r on (t.id = r.idTansmicionesEnVivo)
where t.id is not null
group by t.titulo, t.id, 'Transmiciones vivo'
UNION
select d.titulo "titulo", 'Documentales' "tipo", (select count(1)
                                        from documentales dd
                                        join Reproducciones rr on (dd.id = rr.idDocumental)
                                        where dd.id = d.id) "reproducciones",
                                        (select count(1)
                                        from documentales dd
                                        join FormatoDocumentales ddf on (dd.id = ddf.idDocumental)
                                        join descargas dd on (ddf.id = dd.idFormatoDocumental)
                                        where dd.id = d.id) "descargas",
                                        max(r.fechainicio) "ultima reproduccion",
                                        max(d.fechainicio) "ultima descarga"
from documentales d
full outer join Reproducciones r on (d.id = r.idDocumental)
full outer join FormatoDocumentales df on (d.id = df.idDocumental)
full outer join descargas d on (df.id = d.idFormatoDocumental)
where d.id is not null
group by d.titulo, d.id, 'Documentales'
UNION
select e.titulo "titulo", 'Episodios' "tipo", (select count(1)
                                        from episodios ee
                                        join Reproducciones rr on (ee.id = rr.idEpisodio)
                                        where ee.id = e.id) "reproducciones",
                                        (select count(1)
                                        from episodios ee
                                        join FormatoEpisodio eef on (ee.id = eef.idEpisodio)
                                        join descargas dd on (eef.id = dd.idFormatoEpisodio)
                                        where ee.id = e.id) "descargas",
                                        max(r.fechainicio) "ultima reproduccion",
                                        max(d.fechainicio) "ultima descarga"
from episodios e
full outer join Reproducciones r on (e.id = r.idEpisodio)
full outer join FormatoEpisodio ef on (e.id = ef.idEpisodio)
full outer join descargas d on (ef.id = d.idFormatoEpisodio)
where e.id is not null
group by e.titulo, e.id, 'Episodios'
order by "titulo"
/
