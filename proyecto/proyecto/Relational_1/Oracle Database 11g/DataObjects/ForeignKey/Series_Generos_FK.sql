ALTER TABLE series
    ADD CONSTRAINT series_generos_fk FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );