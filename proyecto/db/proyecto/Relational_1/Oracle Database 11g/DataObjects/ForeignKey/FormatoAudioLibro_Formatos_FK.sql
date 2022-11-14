ALTER TABLE formatoaudiolibro
    ADD CONSTRAINT formatoaudiolibro_formatos_fk FOREIGN KEY ( formato )
        REFERENCES formatos ( formato );