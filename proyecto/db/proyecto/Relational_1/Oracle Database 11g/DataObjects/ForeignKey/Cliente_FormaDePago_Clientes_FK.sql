--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE cliente_formadepago
    ADD CONSTRAINT cliente_formadepago_clientes_fk FOREIGN KEY ( idcliente )
        REFERENCES clientes ( id );