ALTER TABLE descargas
    ADD CONSTRAINT descargas_formatoaudiolibro_fk FOREIGN KEY ( idformatoaudiolibro )
        REFERENCES formatoaudiolibro ( id );