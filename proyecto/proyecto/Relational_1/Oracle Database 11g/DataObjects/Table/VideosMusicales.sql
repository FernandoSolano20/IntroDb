CREATE TABLE videosmusicales (
    id            INTEGER NOT NULL,
    hora          VARCHAR2(1) NOT NULL,
    minutos       VARCHAR2(2) NOT NULL,
    segundos      VARCHAR2(2) NOT NULL,
    lirica        VARCHAR2(10000),
    musica        VARCHAR2(250),
    idtipomusica  VARCHAR2(250) NOT NULL
);