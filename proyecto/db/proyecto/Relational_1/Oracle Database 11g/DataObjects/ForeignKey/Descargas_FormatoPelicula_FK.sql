ALTER TABLE descargas
    ADD CONSTRAINT descargas_formatopelicula_fk FOREIGN KEY ( idformatopelicula )
        REFERENCES formatopelicula ( id );