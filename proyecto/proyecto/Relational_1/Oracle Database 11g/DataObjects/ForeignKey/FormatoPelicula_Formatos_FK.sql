ALTER TABLE formatopelicula
    ADD CONSTRAINT formatopelicula_formatos_fk FOREIGN KEY ( idformato )
        REFERENCES formatos ( formato );