--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE formatoaudiolibro
    ADD CONSTRAINT formatoaudiolibro_audiolibro_fk FOREIGN KEY ( idaudiolibro )
        REFERENCES audiolibro ( id );