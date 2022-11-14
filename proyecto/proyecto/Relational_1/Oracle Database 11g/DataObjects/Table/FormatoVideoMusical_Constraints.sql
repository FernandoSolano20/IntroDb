ALTER TABLE formatovideomusical ADD CONSTRAINT formatovideomusical_pk PRIMARY KEY ( id );


--  ERROR: UK name length exceeds maximum allowed length(30) 

ALTER TABLE formatovideomusical ADD CONSTRAINT formatovideomusical_formatos_formato_videosmusicales_id_un UNIQUE ( formato,
                                                                                                                   idvideosmusical );