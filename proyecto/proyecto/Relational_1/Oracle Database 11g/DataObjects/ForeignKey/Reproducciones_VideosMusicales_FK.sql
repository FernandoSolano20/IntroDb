--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE reproducciones
    ADD CONSTRAINT reproducciones_videosmusicales_fk FOREIGN KEY ( idvideosmusical )
        REFERENCES videosmusicales ( id );