CREATE TABLE peliculas (
    id                   INTEGER NOT NULL,
    titulo               VARCHAR2(250) NOT NULL,
    anno                 DATE NOT NULL,
    estudio              VARCHAR2(300) NOT NULL,
    hora                 VARCHAR2(1) NOT NULL,
    minuto               VARCHAR2(2) NOT NULL,
    segundo              VARCHAR2(2) NOT NULL,
    idpais               CHAR(2) NOT NULL,
    idartista            INTEGER NOT NULL,
    idtipoclasificacion  VARCHAR2(250) NOT NULL,
    idsaga               INTEGER
);