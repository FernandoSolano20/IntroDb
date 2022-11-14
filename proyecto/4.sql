SELECT v.nombre, g.tipo "Genero musical"
FROM videosmusicales v
JOIN generos g on (g.tipo = v.idgenero)
order by g.tipo
/
