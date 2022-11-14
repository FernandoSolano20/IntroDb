ALTER TABLE reproducciones
    ADD CONSTRAINT reproducciones_clientes_fk FOREIGN KEY ( idcliente )
        REFERENCES clientes ( id );