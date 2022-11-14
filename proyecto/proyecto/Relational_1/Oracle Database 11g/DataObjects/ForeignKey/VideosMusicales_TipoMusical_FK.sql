ALTER TABLE videosmusicales
    ADD CONSTRAINT videosmusicales_tipomusical_fk FOREIGN KEY ( idtipomusica )
        REFERENCES tipomusical ( tipomusica );