ALTER TABLE reproducciones
    ADD CONSTRAINT reproducciones_audiolibro_fk FOREIGN KEY ( idaudiolibro )
        REFERENCES audiolibro ( id );