ALTER TABLE clientes
    ADD CONSTRAINT clientes_paises_fk FOREIGN KEY ( idpais )
        REFERENCES paises ( id );