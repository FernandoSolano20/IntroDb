ALTER TABLE documentales
    ADD CONSTRAINT documentales_generos_fk FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );