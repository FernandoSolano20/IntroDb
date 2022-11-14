ALTER TABLE peliculas
    ADD CONSTRAINT peliculas_sagas_fk FOREIGN KEY ( idsaga )
        REFERENCES sagas ( id );