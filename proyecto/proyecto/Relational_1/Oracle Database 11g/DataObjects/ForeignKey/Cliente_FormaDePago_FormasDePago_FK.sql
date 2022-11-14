--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE cliente_formadepago
    ADD CONSTRAINT cliente_formadepago_formasdepago_fk FOREIGN KEY ( tipopago )
        REFERENCES formasdepago ( tipopago );