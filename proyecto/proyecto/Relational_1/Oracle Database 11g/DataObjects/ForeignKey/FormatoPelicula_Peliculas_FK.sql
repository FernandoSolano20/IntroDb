ALTER TABLE formatopelicula
    ADD CONSTRAINT formatopelicula_peliculas_fk FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( id );