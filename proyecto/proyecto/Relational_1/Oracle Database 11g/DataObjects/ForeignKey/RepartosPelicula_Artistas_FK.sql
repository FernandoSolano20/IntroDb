ALTER TABLE repartospelicula
    ADD CONSTRAINT repartospelicula_artistas_fk FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );