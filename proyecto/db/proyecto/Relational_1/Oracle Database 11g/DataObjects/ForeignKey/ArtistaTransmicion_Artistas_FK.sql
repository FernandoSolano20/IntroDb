ALTER TABLE artistatransmicion
    ADD CONSTRAINT artistatransmicion_artistas_fk FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );