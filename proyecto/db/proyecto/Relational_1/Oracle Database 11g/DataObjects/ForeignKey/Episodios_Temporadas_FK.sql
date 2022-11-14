ALTER TABLE episodios
    ADD CONSTRAINT episodios_temporadas_fk FOREIGN KEY ( idtemporada )
        REFERENCES temporadas ( id );