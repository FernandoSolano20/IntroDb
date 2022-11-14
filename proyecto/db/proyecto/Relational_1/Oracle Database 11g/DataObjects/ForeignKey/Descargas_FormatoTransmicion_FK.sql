--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE descargas
    ADD CONSTRAINT descargas_formatotransmicion_fk FOREIGN KEY ( idformatotransmicion )
        REFERENCES formatotransmicion ( id );