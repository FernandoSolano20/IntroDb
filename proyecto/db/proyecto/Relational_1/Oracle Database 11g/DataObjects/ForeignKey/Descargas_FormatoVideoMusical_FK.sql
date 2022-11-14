--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE descargas
    ADD CONSTRAINT descargas_formatovideomusical_fk FOREIGN KEY ( idformatomusical )
        REFERENCES formatovideomusical ( id );