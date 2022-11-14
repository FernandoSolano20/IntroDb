ALTER TABLE formatoserie
    ADD CONSTRAINT formatoserie_formatos_fk FOREIGN KEY ( idformato )
        REFERENCES formatos ( formato );