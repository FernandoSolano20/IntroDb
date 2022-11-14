CREATE TABLE reproducciones (
    id                    INTEGER NOT NULL,
    fechainicio           DATE NOT NULL,
    estadoactual          CHAR(1) NOT NULL,
    ultimosegundo         VARCHAR2(2) NOT NULL,
    idcliente             INTEGER NOT NULL,
    idaudiolibro          INTEGER,
    idtansmicionesenvivo  INTEGER,
    idvideosmusical       INTEGER,
    iddocumental          INTEGER,
    idserie               INTEGER,
    idpelicula            INTEGER
);