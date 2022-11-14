CREATE TABLE clientes (
    id               INTEGER NOT NULL,
    nombre           VARCHAR2(250) NOT NULL,
    apellido         VARCHAR2(250) NOT NULL,
    direccion        VARCHAR2(250) NOT NULL,
    telefono         VARCHAR2(20) NOT NULL,
    fechanacimiento  DATE NOT NULL,
    email            VARCHAR2(100) NOT NULL,
    claveacceso      VARCHAR2(10) NOT NULL,
    profesion        VARCHAR2(250) NOT NULL,
    fechamembresia   DATE NOT NULL,
    idpais           CHAR(2) NOT NULL,
    idgenero         VARCHAR2(20) NOT NULL
);