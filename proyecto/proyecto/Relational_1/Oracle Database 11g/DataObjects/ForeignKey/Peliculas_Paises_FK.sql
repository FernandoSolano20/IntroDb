ALTER TABLE peliculas
    ADD CONSTRAINT peliculas_paises_fk FOREIGN KEY ( idpais )
        REFERENCES paises ( id );