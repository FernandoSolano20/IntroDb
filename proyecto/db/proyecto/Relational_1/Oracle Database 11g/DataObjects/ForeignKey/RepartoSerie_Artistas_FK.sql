ALTER TABLE repartoserie
    ADD CONSTRAINT repartoserie_artistas_fk FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );