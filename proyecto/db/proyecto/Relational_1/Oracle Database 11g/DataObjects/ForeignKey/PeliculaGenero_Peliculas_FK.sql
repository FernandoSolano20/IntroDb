ALTER TABLE peliculagenero
    ADD CONSTRAINT peliculagenero_peliculas_fk FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( id );