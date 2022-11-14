ALTER TABLE formatoserie ADD CONSTRAINT formatoserie_pk PRIMARY KEY ( id );


--  ERROR: UK name length exceeds maximum allowed length(30) 

ALTER TABLE formatoserie ADD CONSTRAINT formatoserie_formatos_formato_series_id_un UNIQUE ( idformato,
                                                                                            idserie );