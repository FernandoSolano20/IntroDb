ALTER TABLE artistas
    ADD CONSTRAINT artistas_paises_fk FOREIGN KEY ( idpais )
        REFERENCES paises ( id );