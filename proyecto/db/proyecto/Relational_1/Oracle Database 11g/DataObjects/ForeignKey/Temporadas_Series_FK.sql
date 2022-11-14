ALTER TABLE temporadas
    ADD CONSTRAINT temporadas_series_fk FOREIGN KEY ( idserie )
        REFERENCES series ( id );