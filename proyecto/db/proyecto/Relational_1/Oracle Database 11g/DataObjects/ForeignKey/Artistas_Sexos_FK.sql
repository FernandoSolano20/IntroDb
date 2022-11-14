ALTER TABLE artistas
    ADD CONSTRAINT artistas_sexos_fk FOREIGN KEY ( idgenero )
        REFERENCES sexos ( genero );