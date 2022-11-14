ALTER TABLE reproducciones
    ADD CONSTRAINT reproducciones_peliculas_fk FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( id );