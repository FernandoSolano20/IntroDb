ALTER TABLE descargas
    ADD CONSTRAINT descargas_formatoserie_fk FOREIGN KEY ( idformatoserie )
        REFERENCES formatoserie ( id );