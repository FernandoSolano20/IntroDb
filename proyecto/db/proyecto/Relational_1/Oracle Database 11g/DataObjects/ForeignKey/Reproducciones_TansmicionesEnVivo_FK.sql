--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE reproducciones
    ADD CONSTRAINT reproducciones_tansmicionesenvivo_fk FOREIGN KEY ( idtansmicionesenvivo )
        REFERENCES tansmicionesenvivo ( id );