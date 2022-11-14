SELECT v.nombre, a.nombreArtistico "Nombre Artistico"
FROM videosmusicales v
JOIN artistas a on (v.idartista = a.id)
order by a.nombreArtistico
/
