ALTER TABLE repartoserie
    ADD CONSTRAINT repartoserie_series_fk FOREIGN KEY ( idserie )
        REFERENCES series ( id );