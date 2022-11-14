ALTER TABLE reproducciones
    ADD CONSTRAINT reproducciones_documentales_fk FOREIGN KEY ( iddocumental )
        REFERENCES documentales ( id );