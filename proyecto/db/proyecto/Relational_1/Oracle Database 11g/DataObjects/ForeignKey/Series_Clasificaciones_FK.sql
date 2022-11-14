ALTER TABLE series
    ADD CONSTRAINT series_clasificaciones_fk FOREIGN KEY ( idtipoclasificacion )
        REFERENCES clasificaciones ( tipoclasificacion );