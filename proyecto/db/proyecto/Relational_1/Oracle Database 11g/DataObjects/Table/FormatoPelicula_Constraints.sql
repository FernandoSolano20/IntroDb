ALTER TABLE formatopelicula ADD CONSTRAINT formatopelicula_pk PRIMARY KEY ( id );


--  ERROR: UK name length exceeds maximum allowed length(30) 

ALTER TABLE formatopelicula ADD CONSTRAINT formatopelicula_formatos_formato_peliculas_id_un UNIQUE ( idformato,
                                                                                                     idpelicula );