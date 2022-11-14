CREATE TABLE episodios (
    id           INTEGER NOT NULL,
    fecha        DATE NOT NULL,
    numero       VARCHAR2(10) NOT NULL,
    titulo       VARCHAR2(250) NOT NULL,
    hora         VARCHAR2(2) NOT NULL,
    minutos      VARCHAR2(2) NOT NULL,
    segundos     VARCHAR2(2) NOT NULL,
    idtemporada  INTEGER NOT NULL
);