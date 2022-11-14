--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE formatovideomusical
    ADD CONSTRAINT formatovideomusical_videosmusicales_fk FOREIGN KEY ( idvideosmusical )
        REFERENCES videosmusicales ( id );