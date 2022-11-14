ALTER TABLE formatoserie
    ADD CONSTRAINT formatoserie_series_fk FOREIGN KEY ( idserie )
        REFERENCES series ( id );