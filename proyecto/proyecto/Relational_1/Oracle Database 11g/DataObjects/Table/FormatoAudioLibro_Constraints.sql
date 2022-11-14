ALTER TABLE formatoaudiolibro ADD CONSTRAINT formatoaudiolibro_pk PRIMARY KEY ( id );


--  ERROR: UK name length exceeds maximum allowed length(30) 

ALTER TABLE formatoaudiolibro ADD CONSTRAINT formatoaudiolibro_audiolibro_id_formatos_formato_un UNIQUE ( idaudiolibro,
                                                                                                          formato );