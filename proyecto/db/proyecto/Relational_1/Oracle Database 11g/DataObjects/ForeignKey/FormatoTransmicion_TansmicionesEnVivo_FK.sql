--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE formatotransmicion
    ADD CONSTRAINT formatotransmicion_tansmicionesenvivo_fk FOREIGN KEY ( idtansmicionesenvivo )
        REFERENCES tansmicionesenvivo ( id );