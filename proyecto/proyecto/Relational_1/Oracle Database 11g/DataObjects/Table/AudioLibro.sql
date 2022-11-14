CREATE TABLE audiolibro (
    id               INTEGER NOT NULL,
    titulo           VARCHAR2(250) NOT NULL,
    autor            VARCHAR2(250) NOT NULL,
    hora             VARCHAR2(2) NOT NULL,
    minutos          VARCHAR2(2),
    segundos         VARCHAR2(2) NOT NULL,
    fecha            DATE NOT NULL,
    numerocapitulos  VARCHAR2(3) NOT NULL,
    editorial        VARCHAR2(250) NOT NULL,
    audio            VARCHAR2(100)
);