ALTER TABLE artistatipoartista
    ADD CONSTRAINT artistatipoartista_artistas_fk FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );