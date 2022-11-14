ALTER TABLE reproducciones
    ADD CONSTRAINT reproducciones_series_fk FOREIGN KEY ( idserie )
        REFERENCES series ( id );