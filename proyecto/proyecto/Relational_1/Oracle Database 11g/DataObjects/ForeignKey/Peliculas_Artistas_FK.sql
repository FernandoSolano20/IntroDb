ALTER TABLE peliculas
    ADD CONSTRAINT peliculas_artistas_fk FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );