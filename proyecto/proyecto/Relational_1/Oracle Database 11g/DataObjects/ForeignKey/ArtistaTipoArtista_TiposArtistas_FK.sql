--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE artistatipoartista
    ADD CONSTRAINT artistatipoartista_tiposartistas_fk FOREIGN KEY ( idtipoartista )
        REFERENCES tiposartistas ( tipo );