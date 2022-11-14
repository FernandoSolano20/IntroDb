ALTER TABLE series
    ADD CONSTRAINT series_paises_fk FOREIGN KEY ( idpais )
        REFERENCES paises ( id );