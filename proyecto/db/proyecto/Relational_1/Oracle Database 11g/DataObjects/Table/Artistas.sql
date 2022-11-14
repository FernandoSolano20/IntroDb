CREATE TABLE artistas (
    id               INTEGER NOT NULL,
    nombre           VARCHAR2(250) NOT NULL,
    apellido         VARCHAR2(250) NOT NULL,
    nombreartistico  VARCHAR2(250) NOT NULL,
    fechanacimeinto  DATE NOT NULL,
    fechainicio      DATE NOT NULL,
    idpais           CHAR(2) NOT NULL,
    idgenero         VARCHAR2(20) NOT NULL
);