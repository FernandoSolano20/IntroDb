--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE formatodocumentales
    ADD CONSTRAINT formatodocumentales_formatos_fk FOREIGN KEY ( idformato )
        REFERENCES formatos ( formato );