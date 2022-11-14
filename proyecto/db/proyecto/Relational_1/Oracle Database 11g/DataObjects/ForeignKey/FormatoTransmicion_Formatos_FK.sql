ALTER TABLE formatotransmicion
    ADD CONSTRAINT formatotransmicion_formatos_fk FOREIGN KEY ( formato )
        REFERENCES formatos ( formato );