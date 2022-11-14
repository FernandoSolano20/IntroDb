ALTER TABLE peliculagenero
    ADD CONSTRAINT peliculagenero_generos_fk FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );