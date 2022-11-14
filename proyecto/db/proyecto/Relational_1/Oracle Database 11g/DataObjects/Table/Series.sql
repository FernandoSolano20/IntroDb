CREATE TABLE series (
    id                   INTEGER NOT NULL,
    anno                 DATE NOT NULL,
    estudio              VARCHAR2(250),
    idpais               CHAR(2) NOT NULL,
    idgenero             VARCHAR2(250) NOT NULL,
    idartista            INTEGER NOT NULL,
    idtipoclasificacion  VARCHAR2(250) NOT NULL
);