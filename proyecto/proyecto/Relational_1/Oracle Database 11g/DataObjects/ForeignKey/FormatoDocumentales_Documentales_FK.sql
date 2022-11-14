--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE formatodocumentales
    ADD CONSTRAINT formatodocumentales_documentales_fk FOREIGN KEY ( iddocumental )
        REFERENCES documentales ( id );