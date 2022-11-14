--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE artistatransmicion
    ADD CONSTRAINT artistatransmicion_tansmicionesenvivo_fk FOREIGN KEY ( idtansmicionesenvivo )
        REFERENCES tansmicionesenvivo ( id );