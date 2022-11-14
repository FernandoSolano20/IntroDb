--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE descargas
    ADD CONSTRAINT descargas_formatodocumentales_fk FOREIGN KEY ( idformatodocumentales )
        REFERENCES formatodocumentales ( id );