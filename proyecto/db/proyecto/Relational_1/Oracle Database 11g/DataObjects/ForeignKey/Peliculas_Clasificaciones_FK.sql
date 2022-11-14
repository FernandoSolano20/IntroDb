ALTER TABLE peliculas
    ADD CONSTRAINT peliculas_clasificaciones_fk FOREIGN KEY ( idtipoclasificacion )
        REFERENCES clasificaciones ( tipoclasificacion );