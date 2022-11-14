ALTER TABLE formatotransmicion ADD CONSTRAINT formatotransmicion_pk PRIMARY KEY ( id );


--  ERROR: UK name length exceeds maximum allowed length(30) 

ALTER TABLE formatotransmicion ADD CONSTRAINT formatotransmicion_formatos_formato_tansmicionesenvivo_id_un UNIQUE ( formato,
                                                                                                                    idtansmicionesenvivo );