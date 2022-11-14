--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE formatovideomusical
    ADD CONSTRAINT formatovideomusical_formatos_fk FOREIGN KEY ( formato )
        REFERENCES formatos ( formato );