CREATE TABLE artistas (
    id               NUMBER(9) NOT NULL,
    nombre           VARCHAR2(250) NOT NULL,
    apellido         VARCHAR2(250) NOT NULL,
    nombreartistico  VARCHAR2(250) NOT NULL,
    fechanacimeinto  DATE NOT NULL,
    fechainicio      DATE NOT NULL,
    idpais           CHAR(2) NOT NULL,
    idgenero         VARCHAR2(20) NOT NULL
);

ALTER TABLE artistas ADD CONSTRAINT artistas_pk PRIMARY KEY ( id );

CREATE TABLE artistatipoartista (
    idartista      NUMBER(9) NOT NULL,
    idtipoartista  VARCHAR2(250) NOT NULL
);

ALTER TABLE artistatipoartista ADD CONSTRAINT artistatipoartista_pk PRIMARY KEY ( idartista,
                                                                                  idtipoartista );

CREATE TABLE artistatransmicion (
    idartista             NUMBER(9) NOT NULL,
    idtansmicionesenvivo  NUMBER(9) NOT NULL
);

ALTER TABLE artistatransmicion ADD CONSTRAINT artistatransmicion_pk PRIMARY KEY ( idartista,
                                                                                  idtansmicionesenvivo );

CREATE TABLE audiolibro (
    id               NUMBER(9) NOT NULL,
    titulo           VARCHAR2(250) NOT NULL,
    hora             VARCHAR2(2) NOT NULL,
    minutos          VARCHAR2(2),
    segundos         VARCHAR2(2) NOT NULL,
    fecha            DATE NOT NULL,
    numerocapitulos  VARCHAR2(3) NOT NULL,
    editorial        VARCHAR2(250) NOT NULL,
    audio            VARCHAR2(100),
    idArtista        NUMBER(9) NOT NULL,
    idgenero         VARCHAR2(250) NOT NULL
);

ALTER TABLE audiolibro ADD CONSTRAINT audiolibro_pk PRIMARY KEY ( id );

CREATE TABLE clasificaciones (
    tipoclasificacion VARCHAR2(250) NOT NULL
);

ALTER TABLE clasificaciones ADD CONSTRAINT clasificaciones_pk PRIMARY KEY ( tipoclasificacion );

CREATE TABLE cliente_formadepago (
    idcliente  NUMBER(9) NOT NULL,
    tipopago   VARCHAR2(250) NOT NULL
);

ALTER TABLE cliente_formadepago ADD CONSTRAINT cliente_formadepago_pk PRIMARY KEY ( idcliente,
                                                                                    tipopago );

CREATE TABLE clientes (
    id               NUMBER(9) NOT NULL,
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

ALTER TABLE clientes ADD CONSTRAINT clientes_pk PRIMARY KEY ( id );

CREATE TABLE descargas (
    id                    NUMBER(9) NOT NULL,
    idcliente             NUMBER(9) NOT NULL,
    fechainicio           DATE NOT NULL,
    idformatomusical      NUMBER(9),
    idformatodocumental   NUMBER(9),
    idformatoepisodio        NUMBER(9),
    idformatoaudiolibro   NUMBER(9),
    idformatopelicula     NUMBER(9)
);

ALTER TABLE descargas ADD CONSTRAINT descargas_pk PRIMARY KEY ( id );

CREATE TABLE documentales (
    id        NUMBER(9) NOT NULL,
    titulo    VARCHAR2(250) NOT NULL,
    anno      DATE NOT NULL,
    idgenero  VARCHAR2(250) NOT NULL
);

ALTER TABLE documentales ADD CONSTRAINT documentales_pk PRIMARY KEY ( id );

CREATE TABLE episodios (
    id           NUMBER(9) NOT NULL,
    fecha        DATE NOT NULL,
    numero       VARCHAR2(10) NOT NULL,
    titulo       VARCHAR2(250) NOT NULL,
    hora         VARCHAR2(2) NOT NULL,
    minutos      VARCHAR2(2) NOT NULL,
    segundos     VARCHAR2(2) NOT NULL,
    idtemporada  NUMBER(9) NOT NULL
);

ALTER TABLE episodios ADD CONSTRAINT episodios_pk PRIMARY KEY ( id );

CREATE TABLE formasdepago (
    tipopago VARCHAR2(250) NOT NULL
);

ALTER TABLE formasdepago ADD CONSTRAINT formasdepago_pk PRIMARY KEY ( tipopago );

CREATE TABLE formatoaudiolibro (
    id            NUMBER(9) NOT NULL,
    formato       VARCHAR2(10) NOT NULL,
    idaudiolibro  NUMBER(9) NOT NULL
);

ALTER TABLE formatoaudiolibro ADD CONSTRAINT formatoaudiolibro_pk PRIMARY KEY ( id );

ALTER TABLE formatoaudiolibro ADD CONSTRAINT audiolibroformatos_formato UNIQUE ( idaudiolibro,
                                                                                                          formato );

CREATE TABLE formatodocumentales (
    id            NUMBER(9) NOT NULL,
    idformato     VARCHAR2(10) NOT NULL,
    iddocumental  NUMBER(9) NOT NULL
);

ALTER TABLE formatodocumentales ADD CONSTRAINT formatodocumentales_pk PRIMARY KEY ( id );

ALTER TABLE formatodocumentales ADD CONSTRAINT formatosdocumental UNIQUE ( idformato,
                                                                                                                iddocumental );

CREATE TABLE formatopelicula (
    id          NUMBER(9) NOT NULL,
    idpelicula  NUMBER(9) NOT NULL,
    idformato   VARCHAR2(10) NOT NULL
);

ALTER TABLE formatopelicula ADD CONSTRAINT formatopelicula_pk PRIMARY KEY ( id );

ALTER TABLE formatopelicula ADD CONSTRAINT formatos_peliculas UNIQUE ( idformato,
                                                                                                     idpelicula );

CREATE TABLE formatos (
    formato VARCHAR2(10) NOT NULL
);

ALTER TABLE formatos ADD CONSTRAINT formatos_pk PRIMARY KEY ( formato );

CREATE TABLE formatoepisodio (
    id         NUMBER(9) NOT NULL,
    idepisodio    NUMBER(9) NOT NULL,
    idformato  VARCHAR2(10) NOT NULL
);

ALTER TABLE formatoepisodio ADD CONSTRAINT formatoepisodio_pk PRIMARY KEY ( id );

ALTER TABLE formatoepisodio ADD CONSTRAINT formato_episodio UNIQUE ( idformato,
                                                                                            idepisodio );

CREATE TABLE formatovideomusical (
    id               NUMBER(9) NOT NULL,
    idvideosmusical  NUMBER(9) NOT NULL,
    formato          VARCHAR2(10) NOT NULL
);

ALTER TABLE formatovideomusical ADD CONSTRAINT formatovideomusical_pk PRIMARY KEY ( id );

ALTER TABLE formatovideomusical ADD CONSTRAINT idformatvideomusical UNIQUE ( formato,
                                                                                                                   idvideosmusical );

CREATE TABLE generos (
    tipo VARCHAR2(250) NOT NULL
);

ALTER TABLE generos ADD CONSTRAINT generos_pk PRIMARY KEY ( tipo );

CREATE TABLE paises (
    id      CHAR(2) NOT NULL,
    nombre  VARCHAR2(40) NOT NULL
);

ALTER TABLE paises ADD CONSTRAINT paises_pk PRIMARY KEY ( id );

CREATE TABLE peliculas (
    id                   NUMBER(9) NOT NULL,
    titulo               VARCHAR2(250) NOT NULL,
    anno                 DATE NOT NULL,
    estudio              VARCHAR2(300) NOT NULL,
    hora                 VARCHAR2(1) NOT NULL,
    minuto               VARCHAR2(2) NOT NULL,
    segundo              VARCHAR2(2) NOT NULL,
    idpais               CHAR(2) NOT NULL,
    idartista            NUMBER(9) NOT NULL,
    idtipoclasificacion  VARCHAR2(250) NOT NULL,
    idsaga               NUMBER(9),
    idgenero             VARCHAR2(250) NOT NULL
);

ALTER TABLE peliculas ADD CONSTRAINT peliculas_pk PRIMARY KEY ( id );

CREATE TABLE repartoserie (
    idserie    NUMBER(9) NOT NULL,
    idartista  NUMBER(9) NOT NULL
);

ALTER TABLE repartoserie ADD CONSTRAINT repartoserie_pk PRIMARY KEY ( idserie,
                                                                      idartista );

CREATE TABLE repartospelicula (
    idartista   NUMBER(9) NOT NULL,
    idpelicula  NUMBER(9) NOT NULL
);

ALTER TABLE repartospelicula ADD CONSTRAINT repartospelicula_pk PRIMARY KEY ( idpelicula,
                                                                              idartista );

CREATE TABLE reproducciones (
    id                    NUMBER(9) NOT NULL,
    fechainicio           DATE NOT NULL,
    estadoactual          CHAR(1) NOT NULL,
    ultimosegundo         VARCHAR2(2) NOT NULL,
    idcliente             NUMBER(9) NOT NULL,
    idaudiolibro          NUMBER(9),
    idtansmicionesenvivo  NUMBER(9),
    idvideosmusical       NUMBER(9),
    iddocumental          NUMBER(9),
    idepisodio            NUMBER(9),
    idpelicula            NUMBER(9)
);

ALTER TABLE reproducciones ADD CONSTRAINT reproducciones_pk PRIMARY KEY ( id );

CREATE TABLE sagas (
    id            NUMBER(9) NOT NULL,
    sagapelicula  VARCHAR2(250) NOT NULL
);

ALTER TABLE sagas ADD CONSTRAINT sagas_pk PRIMARY KEY ( id );

CREATE TABLE series (
    id                   NUMBER(9) NOT NULL,
    titulo              VARCHAR2(250),
    anno                 DATE NOT NULL,
    estudio              VARCHAR2(250),
    idpais               CHAR(2) NOT NULL,
    idgenero             VARCHAR2(250) NOT NULL,
    idartista            NUMBER(9) NOT NULL,
    idtipoclasificacion  VARCHAR2(250) NOT NULL
);

ALTER TABLE series ADD CONSTRAINT series_pk PRIMARY KEY ( id );

CREATE TABLE sexos (
    genero VARCHAR2(20) NOT NULL
);

ALTER TABLE sexos ADD CONSTRAINT sexos_pk PRIMARY KEY ( genero );

CREATE TABLE tansmicionesenvivo (
    id        NUMBER(9) NOT NULL,
    titulo    VARCHAR2(250) NOT NULL,
    fecha     DATE NOT NULL,
    hora      VARCHAR2(2) NOT NULL,
    minutos   VARCHAR2(2) NOT NULL,
    segundos  VARCHAR2(2) NOT NULL,
    idgenero  VARCHAR2(250) NOT NULL
);

ALTER TABLE tansmicionesenvivo ADD CONSTRAINT tansmicionesenvivo_pk PRIMARY KEY ( id );

CREATE TABLE temporadas (
    id               NUMBER(9) NOT NULL,
    numerotemporada  VARCHAR2(10) NOT NULL,
    idserie          NUMBER(9) NOT NULL
);

ALTER TABLE temporadas ADD CONSTRAINT temporadas_pk PRIMARY KEY ( id );

CREATE TABLE tiposartistas (
    tipo VARCHAR2(250) NOT NULL
);

ALTER TABLE tiposartistas ADD CONSTRAINT tiposartistas_pk PRIMARY KEY ( tipo );

CREATE TABLE videosmusicales (
    id            NUMBER(9) NOT NULL,
    nombre        VARCHAR2(250),
    hora          VARCHAR2(1) NOT NULL,
    minutos       VARCHAR2(2) NOT NULL,
    segundos      VARCHAR2(2) NOT NULL,
    lirica        VARCHAR2(100),
    musica        VARCHAR2(250),
    idgenero      VARCHAR2(250) NOT NULL,
    idArtista     NUMBER(9) NOT NULL
);

ALTER TABLE videosmusicales ADD CONSTRAINT videosmusicales_pk PRIMARY KEY ( id );

ALTER TABLE peliculas
    ADD CONSTRAINT artisatas FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );

ALTER TABLE artistatipoartista
    ADD CONSTRAINT artista FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );

ALTER TABLE repartospelicula
    ADD CONSTRAINT artistas FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );

ALTER TABLE repartoserie
    ADD CONSTRAINT artistasv1 FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );

ALTER TABLE artistatipoartista
    ADD CONSTRAINT artistatipoartista_fk FOREIGN KEY ( idtipoartista )
        REFERENCES tiposartistas ( tipo );

ALTER TABLE audiolibro
    ADD CONSTRAINT audiolibro_artistas_fk FOREIGN KEY ( idArtista )
        REFERENCES artistas ( id );

ALTER TABLE videosmusicales
    ADD CONSTRAINT videosmusicales_artistas_fk FOREIGN KEY ( idArtista )
        REFERENCES artistas ( id );

ALTER TABLE series
    ADD CONSTRAINT artistav1 FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );

ALTER TABLE artistatransmicion
    ADD CONSTRAINT artistrans FOREIGN KEY ( idtansmicionesenvivo )
        REFERENCES tansmicionesenvivo ( id );

ALTER TABLE formatoaudiolibro
    ADD CONSTRAINT audiolibro FOREIGN KEY ( idaudiolibro )
        REFERENCES audiolibro ( id );

ALTER TABLE peliculas
    ADD CONSTRAINT clasifi FOREIGN KEY ( idtipoclasificacion )
        REFERENCES clasificaciones ( tipoclasificacion );

ALTER TABLE series
    ADD CONSTRAINT clasifiv1 FOREIGN KEY ( idtipoclasificacion )
        REFERENCES clasificaciones ( tipoclasificacion );

ALTER TABLE reproducciones
    ADD CONSTRAINT cliente FOREIGN KEY ( idcliente )
        REFERENCES clientes ( id );

ALTER TABLE descargas
    ADD CONSTRAINT cliente2 FOREIGN KEY ( idcliente )
        REFERENCES clientes ( id );

ALTER TABLE cliente_formadepago
    ADD CONSTRAINT clientev1 FOREIGN KEY ( idcliente )
        REFERENCES clientes ( id );

ALTER TABLE descargas
    ADD CONSTRAINT des FOREIGN KEY ( idformatoaudiolibro )
        REFERENCES formatoaudiolibro ( id );

ALTER TABLE descargas
    ADD CONSTRAINT desv1 FOREIGN KEY ( idformatoepisodio )
        REFERENCES formatoepisodio ( id );

ALTER TABLE descargas
    ADD CONSTRAINT desv2 FOREIGN KEY ( idformatodocumental )
        REFERENCES formatodocumentales ( id );

ALTER TABLE descargas
    ADD CONSTRAINT desv4 FOREIGN KEY ( idformatopelicula )
        REFERENCES formatopelicula ( id );

ALTER TABLE descargas
    ADD CONSTRAINT desv5 FOREIGN KEY ( idformatomusical )
        REFERENCES formatovideomusical ( id );

ALTER TABLE formatodocumentales
    ADD CONSTRAINT documental FOREIGN KEY ( iddocumental )
        REFERENCES documentales ( id );

ALTER TABLE formatopelicula
    ADD CONSTRAINT formatov1 FOREIGN KEY ( idformato )
        REFERENCES formatos ( formato );

ALTER TABLE formatoaudiolibro
    ADD CONSTRAINT formatov2 FOREIGN KEY ( formato )
        REFERENCES formatos ( formato );

ALTER TABLE formatodocumentales
    ADD CONSTRAINT formatov3 FOREIGN KEY ( idformato )
        REFERENCES formatos ( formato );

ALTER TABLE formatoepisodio
    ADD CONSTRAINT formatov4 FOREIGN KEY ( idformato )
        REFERENCES formatos ( formato );

ALTER TABLE formatovideomusical
    ADD CONSTRAINT formatov5 FOREIGN KEY ( formato )
        REFERENCES formatos ( formato );

ALTER TABLE series
    ADD CONSTRAINT genero FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );

ALTER TABLE videosmusicales
    ADD CONSTRAINT genero10 FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );

ALTER TABLE peliculas
    ADD CONSTRAINT genero2 FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );

ALTER TABLE documentales
    ADD CONSTRAINT generos1 FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );

ALTER TABLE audiolibro
    ADD CONSTRAINT generos2 FOREIGN KEY ( idgenero )
        REFERENCES generos ( tipo );

ALTER TABLE cliente_formadepago
    ADD CONSTRAINT pago FOREIGN KEY ( tipopago )
        REFERENCES formasdepago ( tipopago );

ALTER TABLE series
    ADD CONSTRAINT paises FOREIGN KEY ( idpais )
        REFERENCES paises ( id );

ALTER TABLE clientes
    ADD CONSTRAINT paisesv1 FOREIGN KEY ( idpais )
        REFERENCES paises ( id );

ALTER TABLE artistas
    ADD CONSTRAINT paisesv2 FOREIGN KEY ( idpais )
        REFERENCES paises ( id );

ALTER TABLE peliculas
    ADD CONSTRAINT pasies FOREIGN KEY ( idpais )
        REFERENCES paises ( id );

ALTER TABLE formatopelicula
    ADD CONSTRAINT pelcula FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( id );

ALTER TABLE repartospelicula
    ADD CONSTRAINT repapeli FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( id );

ALTER TABLE reproducciones
    ADD CONSTRAINT repro FOREIGN KEY ( idaudiolibro )
        REFERENCES audiolibro ( id );

ALTER TABLE reproducciones
    ADD CONSTRAINT reprov1 FOREIGN KEY ( idepisodio )
        REFERENCES episodios ( id );

ALTER TABLE reproducciones
    ADD CONSTRAINT reprov2 FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( id );

ALTER TABLE reproducciones
    ADD CONSTRAINT reprov3 FOREIGN KEY ( iddocumental )
        REFERENCES documentales ( id );

ALTER TABLE reproducciones
    ADD CONSTRAINT reprov4 FOREIGN KEY ( idtansmicionesenvivo )
        REFERENCES tansmicionesenvivo ( id );

ALTER TABLE reproducciones
    ADD CONSTRAINT reprov5 FOREIGN KEY ( idvideosmusical )
        REFERENCES videosmusicales ( id );

ALTER TABLE peliculas
    ADD CONSTRAINT sagas FOREIGN KEY ( idsaga )
        REFERENCES sagas ( id );

ALTER TABLE formatoepisodio
    ADD CONSTRAINT episodios21 FOREIGN KEY ( idepisodio )
        REFERENCES episodios ( id );

ALTER TABLE repartoserie
    ADD CONSTRAINT seriev1 FOREIGN KEY ( idserie )
        REFERENCES series ( id );

ALTER TABLE clientes
    ADD CONSTRAINT sexo FOREIGN KEY ( idgenero )
        REFERENCES sexos ( genero );

ALTER TABLE artistas
    ADD CONSTRAINT sexos FOREIGN KEY ( idgenero )
        REFERENCES sexos ( genero );

ALTER TABLE temporadas
    ADD CONSTRAINT temporada FOREIGN KEY ( idserie )
        REFERENCES series ( id );

ALTER TABLE episodios
    ADD CONSTRAINT temporadas FOREIGN KEY ( idtemporada )
        REFERENCES temporadas ( id );

ALTER TABLE artistatransmicion
    ADD CONSTRAINT transmicion FOREIGN KEY ( idartista )
        REFERENCES artistas ( id );

ALTER TABLE formatovideomusical
    ADD CONSTRAINT videomusical FOREIGN KEY ( idvideosmusical )
        REFERENCES videosmusicales ( id );
