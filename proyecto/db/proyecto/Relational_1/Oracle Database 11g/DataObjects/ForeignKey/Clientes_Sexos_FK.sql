ALTER TABLE clientes
    ADD CONSTRAINT clientes_sexos_fk FOREIGN KEY ( idgenero )
        REFERENCES sexos ( genero );