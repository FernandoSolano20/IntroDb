ALTER TABLE series
    ADD CONSTRAINT series_artistas_fk FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );