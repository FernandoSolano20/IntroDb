ALTER TABLE formatodocumentales ADD CONSTRAINT formatodocumentales_pk PRIMARY KEY ( id );


--  ERROR: UK name length exceeds maximum allowed length(30) 

ALTER TABLE formatodocumentales ADD CONSTRAINT formatodocumentales_formatos_formato_documentales_id_un UNIQUE ( idformato,
                                                                                                                iddocumental );