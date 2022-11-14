ALTER TABLE repartospelicula
    ADD CONSTRAINT repartospelicula_peliculas_fk FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( id );