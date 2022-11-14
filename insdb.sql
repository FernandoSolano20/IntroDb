ALTER SESSION SET NLS_LANGUAGE=American; 
ALTER SESSION SET NLS_DATE_FORMAT='dd/mm/yy'; 

INSERT INTO continentes VALUES (1,'Europa');
INSERT INTO continentes VALUES (2,'Americas');
INSERT INTO continentes VALUES (3,'Asia');
INSERT INTO continentes VALUES (4,'Africa');

INSERT INTO paises VALUES ('IT','Italia',1);
INSERT INTO paises VALUES ('JP','Japon',3);
INSERT INTO paises VALUES ('US','Estados Unidos',2);
INSERT INTO paises VALUES ('CA','Canada',2);
INSERT INTO paises VALUES ('CN','China',3);
INSERT INTO paises VALUES ('IN','India',3);
INSERT INTO paises VALUES ('AU','Autralia',3);
INSERT INTO paises VALUES ('ZW','Zimbabwe',4);
INSERT INTO paises VALUES ('SG','Singapore',3);
INSERT INTO paises VALUES ('UK', 'United Kingdom',1);
INSERT INTO paises VALUES ('FR', 'Francia',1);
INSERT INTO paises VALUES ('DE', 'Alemania',1);
INSERT INTO paises VALUES ('ZM', 'Zambia',4);
INSERT INTO paises VALUES ('EG', 'Egipto',4);
INSERT INTO paises VALUES ('BR', 'Brazil',2);
INSERT INTO paises VALUES ('CH','Suiza',1);
INSERT INTO paises VALUES ('NL','Holanda',1);
INSERT INTO paises VALUES ('MX','Mexico',2);
INSERT INTO paises VALUES ('KW','Kuwait',3);
INSERT INTO paises VALUES ('IL','Israel',3);
INSERT INTO paises VALUES ('DK','Dinamarca',1);
INSERT INTO paises VALUES ('HK','HongKong',3);
INSERT INTO paises VALUES ('NG','Nigeria',4);
INSERT INTO paises VALUES ('AR','Argentina',2);
INSERT INTO paises VALUES ('BE','Belgica',1);
INSERT INTO paises VALUES ('PA','Panama',2);
INSERT INTO paises VALUES ('GU','Guatemala',2);
INSERT INTO paises VALUES ('UR','Uruguay',2);
INSERT INTO paises VALUES ('CO','Colombia',2);
INSERT INTO paises VALUES ('VE','Venezuela',2);
INSERT INTO paises VALUES ('PR','Puerto Rico',2);
INSERT INTO paises VALUES ('RD','Republica Dominicana',2);
INSERT INTO paises VALUES ('TK','Turkia',3);
INSERT INTO paises VALUES ('CR','Costa Rica',2); 

INSERT INTO oficinas VALUES (1000,'1297 Via Cola di Rie','00989','Roma',NULL,'IT');
INSERT INTO oficinas VALUES (1100,'93091 Calle della Testa','10934','Venice',NULL,'IT');
INSERT INTO oficinas VALUES (1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
INSERT INTO oficinas VALUES (1300,'9450 Kamiya-cho','6823','Hiroshima',NULL,'JP');
INSERT INTO oficinas VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO oficinas VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO oficinas VALUES (1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
INSERT INTO oficinas VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO oficinas VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO oficinas VALUES (1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
INSERT INTO oficinas VALUES (2000,'40-5-12 Laogianggen','190518','Beijing',NULL,'CN');
INSERT INTO oficinas VALUES (2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
INSERT INTO oficinas VALUES (2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
INSERT INTO oficinas VALUES (2300,'198 Clementi North','540198','Singapore',NULL,'SG');
INSERT INTO oficinas VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO oficinas VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO oficinas VALUES (2600,'9702 Chester Road', '09293', 'Stretford', 'Manchester', 'UK');
INSERT INTO oficinas VALUES (2700,'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO oficinas VALUES (2800,'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO oficinas VALUES (2900,'20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO oficinas VALUES (3000,'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO oficinas VALUES (3100,'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO oficinas VALUES (3200,'Mariano Escobedo 9991', '11932', 'Mexico', 'Distrito Federal', 'MX');
INSERT INTO oficinas VALUES (1650,'Madison Square Garden', '13904', 'Manhattan', 'New York', 'US');
INSERT INTO oficinas VALUES (1780,'Wilcox', '32102', 'Miami', 'Florida', 'US');
INSERT INTO oficinas VALUES (3300,'Oficentro Forum', '10038', 'Santa Ana', 'San Jos�', 'CR');
INSERT INTO oficinas VALUES (3400,'Alfredo Conti Plaza', '80135', 'Buenos Aires', 'Buenos Aires', 'AR');
INSERT INTO oficinas VALUES (3500,'1 Sky Plaza Rd', '72090', 'Hong Kong', 'Hong Kong', 'HK');

ALTER TABLE departamentos DISABLE CONSTRAINT FKdep_director;

INSERT INTO departamentos VALUES (10,   'Administracion', 200, 1700);
INSERT INTO departamentos VALUES (20,   'Marketing', 201, 1800);
INSERT INTO departamentos VALUES (30,   'Compras', 114, 1700);
INSERT INTO departamentos VALUES (40,   'Recursos Humanos', 203, 2400);
INSERT INTO departamentos VALUES (50,   'Proveduria', 121, 1500);
INSERT INTO departamentos VALUES (60 ,  'Sistemas', 103, 1400);
INSERT INTO departamentos VALUES (70 ,  'Internacional', 204, 2700);
INSERT INTO departamentos VALUES (80 ,  'Ventas', 145, 2500);
INSERT INTO departamentos VALUES (90 ,  'Presidencia', 100, 3500);
INSERT INTO departamentos VALUES (100 , 'Finanzas', 108,1780);
INSERT INTO departamentos VALUES (110 , 'Auditoria', 205, 1700);
INSERT INTO departamentos VALUES (120 , 'Cobranzas', NULL, 1700);
INSERT INTO departamentos VALUES (130 , 'Seguridad', NULL, 1700);
INSERT INTO departamentos VALUES (140 , 'Credito', NULL, 1700);
INSERT INTO departamentos VALUES (150 , 'Servicios Generales', NULL, 1700);
INSERT INTO departamentos VALUES (160 , 'Transportes', NULL, 1700);
INSERT INTO departamentos VALUES (170 , 'Produccion', NULL, 1650);
INSERT INTO departamentos VALUES (180 , 'Construccion', NULL, 1700);
INSERT INTO departamentos VALUES (190 , 'Contratos', NULL, 3300);
INSERT INTO departamentos VALUES (200 , 'Operaciones', NULL, 1700);
INSERT INTO departamentos VALUES (210 , 'Soporte Tecnico', NULL, 1700);
INSERT INTO departamentos VALUES (220 , 'Planificacion', NULL, 3400);
INSERT INTO departamentos VALUES (230 , 'Servicio al Cliente', NULL, 1700);
INSERT INTO departamentos VALUES (240 , 'Calidad', NULL, 1700);
INSERT INTO departamentos VALUES (250 , 'Investigacion', NULL, 2700);
INSERT INTO departamentos VALUES (260 , 'Alianzas', NULL, 1780);
INSERT INTO departamentos VALUES (270 , 'Telecomunicaciones', NULL, 2900);
INSERT INTO departamentos VALUES (280 , 'Legal', 120, 1650);


INSERT INTO puestos VALUES ('A01', 'Presidente',   2000000, 12000000);
INSERT INTO puestos VALUES ('A02', 'vice Pdte',     3500000,  8000000);
INSERT INTO puestos VALUES ('A08', 'Auditor',       650000,  2150000);
INSERT INTO puestos VALUES ('B01', 'Financiero',   2200000,  5000000);
INSERT INTO puestos VALUES ('B02', 'Estadistico' ,  820000,  1200000);
INSERT INTO puestos VALUES ('B03', 'Vendedor',       1400000,  3800000);
INSERT INTO puestos VALUES ('B04', 'Contralor',     820000,  1800000);
INSERT INTO puestos VALUES ('B05', 'Comprador',      1000000,  2200000);
INSERT INTO puestos VALUES ('B06', 'Perito',      750000,  1050000);
INSERT INTO puestos VALUES ('B07', 'Abogado',      850000,  2150000);
INSERT INTO puestos VALUES ('B08', 'Aquitecto',     1100000,  1800000);
INSERT INTO puestos VALUES ('B09', 'Reclutador',900000,1700000);
INSERT INTO puestos VALUES ('C02', 'Contador',      420000,   900000);
INSERT INTO puestos VALUES ('C04', 'Programador',   800000,  2000000);
INSERT INTO puestos VALUES ('C05', 'Asistente Ventas',     600000,  2400000);
INSERT INTO puestos VALUES ('D01', 'Asistente Producccion',400000, 800000);
INSERT INTO puestos VALUES ('D02', 'Asistente Compras',    350000,   750000);
INSERT INTO puestos VALUES ('D03', 'Asistente Financiero', 450000,   600000);
INSERT INTO puestos VALUES ('D04', 'Asistente Envios',     350000,   750000);
INSERT INTO puestos VALUES ('D05', 'Asistente Mercadeo',   400000,   800000);


INSERT INTO EMPLEADOS VALUES(100,'HARI','SELDON','M','HSELDON@trantor','16/06/1964','14/06/1987','A01',2400000,0,NULL,90);
INSERT INTO EMPLEADOS VALUES(101,'DANEEL','OLIVAW','M','DOLIVAW@trantor','15/12/1971','10/12/1995','A02',2600000,0,100,90);
INSERT INTO EMPLEADOS VALUES(102,'GISKARD','REVENTLOV','M','GREVENTLOV@trantor','09/03/1970','05/03/1997','A02',1700000,0,100,90);
INSERT INTO EMPLEADOS VALUES(103,'ARKADY','DARELL','M','ADARELL@trantor','21/03/1961','15/03/1991','C04',900000,0,102,60);
INSERT INTO EMPLEADOS VALUES(104,'JOSEPH','SCHWARTZ','M','JSCHWARTZ@trantor','19/01/1952','10/01/1991','C04',600000,0,103,60);
INSERT INTO EMPLEADOS VALUES(105,'ELIJAH','BALEY','M','EBALEY@trantor','20/11/1975','19/11/2000','C04',480000,0,103,60);
INSERT INTO EMPLEADOS VALUES(106,'HOBER','MALLOW','M','HMALLOW@trantor','26/09/1967','23/09/2005','C04',480000,0,103,60);
INSERT INTO EMPLEADOS VALUES(107,'BAYTA','DARELL','F','BDARELL@trantor','30/11/1967','30/11/1999','C04',420000,0,103,60);
INSERT INTO EMPLEADOS VALUES(108,'ETO','DEMERZEL','M','EDEMERZEL@trantor','06/01/1985','04/01/2015','B01',1200000,0,101,100);
INSERT INTO EMPLEADOS VALUES(109,'GAAL','DORNICK','F','GDORNICK@trantor','30/08/1967','27/08/2007','B04',900000,0,108,100);
INSERT INTO EMPLEADOS VALUES(110,'BEL','RIOSE','M','BRIOSE@trantor','21/05/1974','18/05/2003','B04',820000,0,108,100);
INSERT INTO EMPLEADOS VALUES(111,'GLADIA','SOLARIA','F','GSOLARIA@trantor','04/03/1976','05/03/2002','C02',770090,0,108,100);
INSERT INTO EMPLEADOS VALUES(112,'GOLAN','TREVIZE','M','GTREVIZE@trantor','14/06/1978','12/06/2013','B02',780060,0,108,100);
INSERT INTO EMPLEADOS VALUES(113,'RAICH','SELDON','M','RSELDON@trantor','03/03/1971','23/02/2008','B02',690050,0,108,100);
INSERT INTO EMPLEADOS VALUES(114,'CLEON','PRIMERO','M','CPRIMERO@trantor','02/12/1982','30/11/2003','B05',1100040,0,100,30);
INSERT INTO EMPLEADOS VALUES(115,'SALVOR','HARDIN','M','SHARDIN@trantor','16/05/1982','19/05/2000','D02',310120,0,114,30);
INSERT INTO EMPLEADOS VALUES(116,'SUSAN','CALVIN','F','SCALVIN@trantor','03/12/1971','28/11/2005','D02',290000,0,114,30);
INSERT INTO EMPLEADOS VALUES(117,'DORS','VENABILI','F','DVENABILI@trantor','06/09/1968','05/09/2003','D02',280000,0,114,30);
INSERT INTO EMPLEADOS VALUES(118,'JANOV','PELORAT','M','JPELORAT@trantor','15/02/1974','10/02/2008','D02',260000,0,114,30);
INSERT INTO EMPLEADOS VALUES(119,'YUGO','AMARIL','M','YAMARIL@trantor','07/07/1972','29/06/2012','D02',250000,0,114,30);
INSERT INTO EMPLEADOS VALUES(120,'BOR','ALURIN','M','BALURIN@trantor','24/08/1983','23/08/2009','B06',800000,0,100,50);
INSERT INTO EMPLEADOS VALUES(121,'PELLEAS','ANTHOR','M','PANTHOR@trantor','07/12/1982','07/12/2014','B06',820000,0,100,50);
INSERT INTO EMPLEADOS VALUES(122,'LORS','AVAKIM','M','LAVAKIM@trantor','15/08/1968','10/08/2001','B06',790000,0,100,50);
INSERT INTO EMPLEADOS VALUES(123,'DUCEM','BARR','F','DBARR@trantor','03/10/1971','02/10/2001','B06',650000,0,100,50);
INSERT INTO EMPLEADOS VALUES(124,'ONUM','BARR','M','OBARR@trantor','25/12/1970','20/12/1998','B06',580000,0,100,50);
INSERT INTO EMPLEADOS VALUES(125,'HARLA','BRANNO','F','HBRANNO@trantor','02/01/1958','25/12/1993','D03',320000,0,120,50);
INSERT INTO EMPLEADOS VALUES(126,'AMMEL','BRODRIG','M','ABRODRIG@trantor','25/10/1981','20/10/2010','D01',270000,0,120,50);
INSERT INTO EMPLEADOS VALUES(127,'LADY','CALLIA','F','LCALLIA@trantor','16/01/1976','14/01/2010','D01',240000,0,120,50);
INSERT INTO EMPLEADOS VALUES(128,'LINGE','CHEN','M','LCHEN@trantor','15/07/1975','14/07/2001','D01',220000,0,120,50);
INSERT INTO EMPLEADOS VALUES(129,'MUN LI','COMPOR','F','MCOMPOR@trantor','25/03/1976','28/03/1998','D01',330000,0,121,50);
INSERT INTO EMPLEADOS VALUES(130,'LUNDIN','CRAST','M','LCRAST@trantor','29/04/1981','30/04/2009','D01',280000,0,121,50);
INSERT INTO EMPLEADOS VALUES(131,'TORAN SI','BAYTA','M','TBAYTA@trantor','28/03/1963','19/03/2002','D01',250000,0,121,50);
INSERT INTO EMPLEADOS VALUES(132,'TORAN','DARELL','M','TDARELL@trantor','01/04/1976','01/04/2005','D01',210000,0,121,50);
INSERT INTO EMPLEADOS VALUES(133,'LATHAN','DEVERS','M','LDEVERS@trantor','14/09/1986','15/09/2008','D01',330000,0,122,50);
INSERT INTO EMPLEADOS VALUES(134,'LORD','DORWIN','M','LDORWIN@trantor','24/06/1973','19/06/2002','D01',290000,0,122,50);
INSERT INTO EMPLEADOS VALUES(135,'TAMWIL','ELAR','M','TELAR@trantor','24/04/1978','23/04/1999','D01',240000,0,122,50);
INSERT INTO EMPLEADOS VALUES(136,'JORD','FARA','M','JFARA@trantor','24/12/1972','21/12/1997','D01',220000,0,122,50);
INSERT INTO EMPLEADOS VALUES(137,'SENNET','FORELL','M','SFORELL@trantor','07/06/1980','06/06/2000','D01',360000,0,123,50);
INSERT INTO EMPLEADOS VALUES(138,'YATE','FULHAM','M','YFULHAM@trantor','08/06/1959','31/05/1997','D01',320000,0,123,50);
INSERT INTO EMPLEADOS VALUES(139,'STOR','GENDIVAL','M','SGENDIVAL@trantor','03/02/1972','28/01/2003','D01',270000,0,123,50);
INSERT INTO EMPLEADOS VALUES(140,'MANDELL','GRUBER','M','MGRUBER@trantor','30/07/1961','25/07/1995','D01',250000,0,123,50);
INSERT INTO EMPLEADOS VALUES(141,'PRIMARUL','INDBUR','M','PINDBUR@trantor','25/11/1963','19/11/2003','D01',350000,0,124,50);
INSERT INTO EMPLEADOS VALUES(142,'LASKIN','JORANUM','M','LJORANUM@trantor','25/05/1961','22/05/1994','D01',310000,0,124,50);
INSERT INTO EMPLEADOS VALUES(143,'YOHAN','LEE','M','YLEE@trantor','23/10/1956','16/10/1997','D01',260000,0,124,50);
INSERT INTO EMPLEADOS VALUES(144,'JENARR','LEGGEN','M','JLEGGEN@trantor','28/01/1953','24/01/1995','D01',250090,0,124,50);
INSERT INTO EMPLEADOS VALUES(145,'REGELE','LEPOLD','M','RLEPOLD@trantor','15/10/1968','09/10/1996','B03',1400070,0,100,80);
INSERT INTO EMPLEADOS VALUES(146,'PUBLIS','MANLIO','M','PMANLIO@trantor','09/06/1963','01/06/1997','B03',1350000,0,100,80);
INSERT INTO EMPLEADOS VALUES(147,'CINDA','MONAY','F','CMONAY@trantor','10/01/1980','07/01/1998','B03',1200000,0,100,80);
INSERT INTO EMPLEADOS VALUES(148,'HOMIR','MUNN','M','HMUNN@trantor','20/12/1952','18/12/1987','B03',1100000,0,100,80);
INSERT INTO EMPLEADOS VALUES(149,'SURA','NOVI','F','SNOVI@trantor','11/02/1973','07/02/2000','B03',1050000,0,100,80);
INSERT INTO EMPLEADOS VALUES(150,'STETTIN','PALVER','M','SPALVER@trantor','08/09/1956','04/09/1992','C05',1000000,0,145,80);
INSERT INTO EMPLEADOS VALUES(151,'JORD','PARMA','M','JPARMA@trantor','10/10/1970','06/10/1997','C05',950000,0,145,80);
INSERT INTO EMPLEADOS VALUES(152,'LEWIS','PIRENNE','M','LPIRENNE@trantor','07/04/1980','07/04/2013','C05',900000,0,145,80);
INSERT INTO EMPLEADOS VALUES(153,'ANSELM HAUT','RODRIC','M','ARODRIC@trantor','04/02/1984','29/01/2015','C05',800000,0,145,80);
INSERT INTO EMPLEADOS VALUES(154,'ELVETT','SEMIC','M','ESEMIC@trantor','08/08/1958','29/07/2000','C05',750000,0,145,80);
INSERT INTO EMPLEADOS VALUES(155,'SEF','SERMAK','M','SSERMAK@trantor','12/09/1958','04/09/1994','C05',700000,0,145,80);
INSERT INTO EMPLEADOS VALUES(156,'QUINDOR','SHANDESS','M','QSHANDESS@trantor','26/05/1952','22/05/1992','C05',1000000,0,146,80);
INSERT INTO EMPLEADOS VALUES(157,'JORAME','SUTT','F','JSUTT@trantor','29/09/1951','23/09/1990','C05',950000,0,146,80);
INSERT INTO EMPLEADOS VALUES(158,'TOMAZ','SUTT','M','TSUTT@trantor','30/05/1975','22/05/2012','C05',900000,0,146,80);
INSERT INTO EMPLEADOS VALUES(159,'JOLE','TURBOR','F','JTURBOR@trantor','02/12/1957','23/11/2008','C05',800000,0,146,80);
INSERT INTO EMPLEADOS VALUES(160,'JAIM','TWER','M','JTWER@trantor','07/08/1986','02/08/2013','C05',750000,0,146,80);
INSERT INTO EMPLEADOS VALUES(161,'POLY','VERISOF','F','PVERISOF@trantor','03/02/1971','29/01/2000','C05',700000,0,146,80);
INSERT INTO EMPLEADOS VALUES(162,'PRINTUL REGENT','WIENIS','M','PWIENIS@trantor','29/05/1968','25/05/1999','C05',1050000,0,147,80);
INSERT INTO EMPLEADOS VALUES(163,'VINCE','BARRETT','M','VBARRETT@trantor','02/09/1965','31/08/1990','C05',950000,0,147,80);
INSERT INTO EMPLEADOS VALUES(164,'JULIUS','ENDERBY','M','JENDERBY@trantor','22/03/1953','15/03/1993','C05',720000,0,147,80);
INSERT INTO EMPLEADOS VALUES(165,'JEZEBEL','BALEY','F','JBALEY@trantor','02/02/1954','23/01/2000','C05',680000,0,147,80);
INSERT INTO EMPLEADOS VALUES(166,'ROJ NEMENNUH','SARTON','M','RSARTON@trantor','02/03/1977','03/03/2003','C05',640000,0,147,80);
INSERT INTO EMPLEADOS VALUES(167,'BENTLEY','BALEY','M','BBALEY@trantor','11/05/1981','14/05/2002','C05',620000,0,147,80);
INSERT INTO EMPLEADOS VALUES(168,'HAN','FASTOLFE','M','HFASTOLFE@trantor','05/11/1971','05/11/1997','C05',1150000,0,148,80);
INSERT INTO EMPLEADOS VALUES(169,'ANTHONY','GERRIGEL','M','AGERRIGEL@trantor','19/11/1972','14/11/2011','C05',1000000,0,148,80);
INSERT INTO EMPLEADOS VALUES(170,'FRANCIS','CLOUSARR','M','FCLOUSARR@trantor','15/04/1988','17/04/2009','C05',960000,0,148,80);
INSERT INTO EMPLEADOS VALUES(171,'CHETTER','HUMMIN','M','CHUMMIN@trantor','31/08/1960','28/08/1989','C05',740000,0,148,80);
INSERT INTO EMPLEADOS VALUES(172,'EBLING','MIS','M','EMIS@trantor','15/06/1980','12/06/2007','C05',730000,0,148,80);
INSERT INTO EMPLEADOS VALUES(173,'WANDA','SELDON','F','WSELDON@trantor','25/08/1952','20/08/1990','C05',610000,0,148,80);
INSERT INTO EMPLEADOS VALUES(174,'CLEON','SEGUNDO','M','CSEGUNDO@trantor','02/11/1958','01/11/1992','C05',1100000,0,149,80);
INSERT INTO EMPLEADOS VALUES(175,'WILSON','ROTH','M','WROTH@trantor','02/12/1957','28/11/2000','C05',880000,0,149,80);
INSERT INTO EMPLEADOS VALUES(176,'LAVINIA','DEMACHECK','F','LDEMACHECK@trantor','29/09/1959','25/09/1991','C05',860000,0,149,80);
INSERT INTO EMPLEADOS VALUES(177,'ALBERT','MINNIN','M','AMINNIN@trantor','15/01/1991','13/01/2013','C05',840000,0,149,80);
INSERT INTO EMPLEADOS VALUES(178,'JANDER','PANELL','M','JPANELL@trantor','23/09/1974','20/09/2000','C05',700000,0,149,80);
INSERT INTO EMPLEADOS VALUES(179,'FANYA','FASTOLFE','F','FFASTOLFE@trantor','16/07/1977','17/07/1999','C05',620000,0,149,80);
INSERT INTO EMPLEADOS VALUES(180,'GLADIA','DELMARRE','F','GDELMARRE@trantor','03/10/1963','03/10/1992','D04',320000,0,120,50);
INSERT INTO EMPLEADOS VALUES(181,'PANDION','GLADIA','M','PGLADIA@trantor','30/08/1978','25/08/2014','D04',310000,0,120,50);
INSERT INTO EMPLEADOS VALUES(182,'BORGRAF','GLADIA','M','BGLADIA@trantor','11/07/1990','07/07/2011','D04',250000,0,120,50);
INSERT INTO EMPLEADOS VALUES(183,'VASILIA','ALIENA','F','VALIENA@trantor','14/03/1973','11/03/2010','D04',280000,0,120,50);
INSERT INTO EMPLEADOS VALUES(184,'LUMEN','FASTOLFE','M','LFASTOLFE@trantor','11/02/1976','09/02/2006','D04',420000,0,121,50);
INSERT INTO EMPLEADOS VALUES(185,'SANTIRIX','GREMIONIS','M','SGREMIONIS@trantor','31/08/1958','28/08/1996','D04',410000,0,121,50);
INSERT INTO EMPLEADOS VALUES(186,'BRUNDIJ','GREMIONIS','M','BGREMIONIS@trantor','24/01/1964','16/01/2002','D04',340000,0,121,50);
INSERT INTO EMPLEADOS VALUES(187,'KELDEN','AMADIRO','M','KAMADIRO@trantor','02/02/1986','02/02/2008','D04',300000,0,121,50);
INSERT INTO EMPLEADOS VALUES(188,'MALOON','CICIS','M','MCICIS@trantor','15/03/1976','09/03/2015','D04',380000,0,122,50);
INSERT INTO EMPLEADOS VALUES(189,'RUTILAN','HORDER','M','RHORDER@trantor','28/11/1971','29/11/1995','D04',360000,0,122,50);
INSERT INTO EMPLEADOS VALUES(190,'ALTIM','THOOL','M','ATHOOL@trantor','22/11/1992','24/11/2015','D04',290000,0,122,50);
INSERT INTO EMPLEADOS VALUES(191,'CORWIN','ATTLEBISH','M','CATTLEBISH@trantor','11/05/1980','11/05/2003','D04',250000,0,122,50);
INSERT INTO EMPLEADOS VALUES(192,'ANSELMO','QUEMOT','M','AQUEMOT@trantor','20/08/1980','19/08/2015','D04',400000,0,123,50);
INSERT INTO EMPLEADOS VALUES(193,'JOTHAN','LEEBIG','M','JLEEBIG@trantor','14/06/1987','14/06/2011','D04',390000,0,123,50);
INSERT INTO EMPLEADOS VALUES(194,'RIKAINE','DELMARRE','M','RDELMARRE@trantor','25/05/1972','24/05/1991','D04',320000,0,123,50);
INSERT INTO EMPLEADOS VALUES(195,'ROGEN','BENASTRA','M','RBENASTRA@trantor','24/04/1990','23/04/2014','D04',280000,0,123,50);
INSERT INTO EMPLEADOS VALUES(196,'ENDOR','LEVANIAN','M','ELEVANIAN@trantor','16/07/1976','12/07/1998','D04',310000,0,124,50);
INSERT INTO EMPLEADOS VALUES(197,'JIRAD','TISALVER','M','JTISALVER@trantor','03/05/1976','04/05/2007','D04',300000,0,124,50);
INSERT INTO EMPLEADOS VALUES(198,'HANO','LINDER','M','HLINDER@trantor','11/01/1970','09/01/1997','D04',260000,0,124,50);
INSERT INTO EMPLEADOS VALUES(199,'EMMER','THALUS','M','ETHALUS@trantor','08/06/1961','08/06/1989','D04',260000,0,124,50);
INSERT INTO EMPLEADOS VALUES(200,'RICHARD','MARTIN','M','RMARTIN@trantor','21/08/1966','15/08/1999','D03',440000,0,101,10);
INSERT INTO EMPLEADOS VALUES(201,'ANDREW','DATA','M','ADATA@trantor','08/04/1982','06/04/2007','B08',1300000,0,100,20);
INSERT INTO EMPLEADOS VALUES(202,'LINDA','RASH','F','LRASH@trantor','02/08/1961','28/07/1997','D05',600000,0,201,20);
INSERT INTO EMPLEADOS VALUES(203,'AFFRET','SHEKT','M','ASHEKT@trantor','24/01/1960','15/01/1999','B09',650000,0,101,40);
INSERT INTO EMPLEADOS VALUES(204,'BEL','AVARDAN','M','BAVARDAN@trantor','05/09/1982','31/08/2015','A08',1000000,0,101,70);
INSERT INTO EMPLEADOS VALUES(205,'POLA','SHEKT','F','PSHEKT@trantor','10/10/1976','13/10/1997','B02',1200000,0,101,110);
INSERT INTO EMPLEADOS VALUES(206,'LITTLE MISS','MARTIN','F','LMARTIN@trantor','11/12/1961','07/12/1990','C02',850000,0,205,110);
INSERT INTO EMPLEADOS VALUES(207,'GEORGE','MARTIN','M','GMARTIN@trantor','21/12/1962','18/12/1989','D03',510000,0,205,110);
INSERT INTO EMPLEADOS VALUES(208,'GALATEA','DATA','F','GDATA@trantor','07/09/1982','06/09/2010','D03',530000,0,205,90);
INSERT INTO EMPLEADOS VALUES(209,'KLORISSA','CANTORO','F','KCANTORO@trantor','26/10/1966','23/10/1989','D03',730000,0,205,60);
INSERT INTO EMPLEADOS VALUES(401,'ISABELLA','ROSETTI','F','IROSETTI@trantor','14/04/1971','11/04/1992','C05',700000,0,145,80);
INSERT INTO EMPLEADOS VALUES(402,'ADA','ABEDUL','F','AABEDUL@trantor','06/06/1961','30/05/1993','C05',700000,0,401,80);
INSERT INTO EMPLEADOS VALUES(403,'ANA','ARTAFIA','F','AARTAFIA@trantor','02/10/1973','01/10/2004','C05',750000,0,401,80);
INSERT INTO EMPLEADOS VALUES(404,'EVA','ARANA','F','EARANA@trantor','10/02/1995','12/02/2015','C05',745000,0,401,80);
INSERT INTO EMPLEADOS VALUES(405,'LIA','BRESNE','F','LBRESNE@trantor','08/12/1972','05/12/1999','C05',690000,0,401,80);
INSERT INTO EMPLEADOS VALUES(406,'ISABEL','BORJUES','F','IBORJUES@trantor','23/06/1970','16/06/2008','C05',700000,0,401,80);
INSERT INTO EMPLEADOS VALUES(407,'ISABELA','BALLASTARO','F','IBALLASTARO@trantor','24/06/1970','25/06/1991','D01',500900,0,102,170);
INSERT INTO EMPLEADOS VALUES(408,'GUADALUPE','CANACCI','F','GCANACCI@trantor','07/04/1985','09/04/2009','D01',500900,0,406,170);
INSERT INTO EMPLEADOS VALUES(409,'ALAN','COTTA','M','ACOTTA@trantor','04/05/1980','03/05/2004','D01',522800,0,406,170);
INSERT INTO EMPLEADOS VALUES(410,'ALANA','CERPETES','F','ACERPETES@trantor','08/01/1991','09/01/2015','D01',535000,0,406,170);
INSERT INTO EMPLEADOS VALUES(411,'AMANDA','TORRENS','F','ATORRENS@trantor','27/06/1993','29/06/2013','D01',610000,0,406,170);
INSERT INTO EMPLEADOS VALUES(412,'DIANA','GURRIETEZ','F','DGURRIETEZ@trantor','08/05/1978','05/05/1996','D01',615000,0,406,170);
INSERT INTO EMPLEADOS VALUES(413,'EMANUEL','ZAMBUDO','M','EZAMBUDO@trantor','21/08/1981','22/08/2002','D01',615000,0,406,170);
INSERT INTO EMPLEADOS VALUES(414,'FRANCISCO','FONTINE','M','FFONTINE@trantor','06/03/1979','06/03/2010','D05',485000,0,102,20);
INSERT INTO EMPLEADOS VALUES(415,'JUAN','BARQUIARO','M','JBARQUIARO@trantor','01/10/1985','29/09/2007','D05',670300,0,414,20);
INSERT INTO EMPLEADOS VALUES(416,'ADAN','SETIA','M','ASETIA@trantor','25/05/1987','23/05/2011','D05',670300,0,414,20);
INSERT INTO EMPLEADOS VALUES(417,'IVAN','LUPIES','M','ILUPIES@trantor','13/05/1978','08/05/2011','D05',670300,0,414,20);
INSERT INTO EMPLEADOS VALUES(418,'JOAQUIN','MONTEBLANCO','M','JMONTEBLANCO@trantor','18/10/1971','13/10/2008','D05',670300,0,414,20);
INSERT INTO EMPLEADOS VALUES(419,'CLARA','VILLANOA','F','CVILLANOA@trantor','01/05/1992','28/04/2013','D05',485000,0,414,20);
INSERT INTO EMPLEADOS VALUES(420,'OMAR','LUBIN','M','OLUBIN@trantor','25/06/1959','18/06/2002','D05',800000,0,414,20);
INSERT INTO EMPLEADOS VALUES(421,'CLAUDIA','DOLGEDO','F','CDOLGEDO@trantor','26/06/1959','22/06/1999','C04',1000000,0,103,210);
INSERT INTO EMPLEADOS VALUES(422,'AMAYA','CRATOS','F','ACRATOS@trantor','01/03/1970','28/02/1995','C04',1000000,0,421,210);
INSERT INTO EMPLEADOS VALUES(423,'SEBASTIAN','DORDIGEZ','M','SDORDIGEZ@trantor','19/05/1978','12/05/2013','C04',1000000,0,421,210);
INSERT INTO EMPLEADOS VALUES(424,'ROBERTO','BALIREN','M','RBALIREN@trantor','03/03/1970','28/02/2009','C04',1000000,0,421,210);
INSERT INTO EMPLEADOS VALUES(425,'RUBEN','CARILO','M','RCARILO@trantor','03/03/1993','02/03/2011','C04',1000000,0,421,210);
INSERT INTO EMPLEADOS VALUES(426,'FABIAN','ZORQUI','M','FZORQUI@trantor','13/07/1991','09/07/2014','C04',1000000,0,421,210);
INSERT INTO EMPLEADOS VALUES(427,'TOBIAS','GOMEN','M','TGOMEN@trantor','31/03/1988','31/03/2015','C04',1000000,0,421,210);
INSERT INTO EMPLEADOS VALUES(428,'PABLO','SAMIS','M','PSAMIS@trantor','28/10/1971','24/10/1995','C04',1000000,0,421,210);
INSERT INTO EMPLEADOS VALUES(429,'GABRIEL','NOLOSA','M','GNOLOSA@trantor','11/08/1986','09/08/2011','B03',990000,0,103,80);
INSERT INTO EMPLEADOS VALUES(430,'GABRIELA','HACHEDOSO','F','GHACHEDOSO@trantor','03/10/1976','03/10/2000','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(431,'LUCAS','NAVORRA','M','LNAVORRA@trantor','21/09/1990','17/09/2012','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(432,'OSCAR','JERTOS','M','OJERTOS@trantor','19/07/1991','17/07/2014','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(433,'RICARDO','ASARI','M','RASARI@trantor','14/11/1980','13/11/2003','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(434,'CECILIA','CANZARRA','F','CCANZARRA@trantor','21/07/1968','20/07/1997','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(435,'LUCIAN','CANALES','M','LCANALES@trantor','16/11/1980','17/11/2002','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(436,'LUCIA','REBLOS','F','LREBLOS@trantor','18/05/1992','15/05/2011','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(437,'NICOLAS','WASTON','M','NWASTON@trantor','07/05/1983','07/05/2010','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(438,'HECTOR','SANCO','M','HSANCO@trantor','03/12/1966','02/12/1998','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(439,'VICTOR','DAQUESA','M','VDAQUESA@trantor','18/03/1970','11/03/2003','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(440,'VICTORIA','LAUGARI','F','VLAUGARI@trantor','04/12/1989','03/12/2013','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(441,'ANDREA','MAZDEN','F','AMAZDEN@trantor','14/04/1988','16/04/2015','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(442,'ANDRES','ARFOLA','M','AARFOLA@trantor','03/04/1979','06/04/1997','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(443,'PEDRO','JASOR','M','PJASOR@trantor','30/04/1974','30/04/1997','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(444,'RODRIGO','CONTILLA','M','RCONTILLA@trantor','26/08/1986','24/08/2007','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(445,'NOE','MARO','M','NMARO@trantor','18/10/1976','17/10/1995','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(446,'DIEGO','CHAPACO','M','DCHAPACO@trantor','16/05/1960','12/05/1999','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(447,'ALEJANDRA','PORTOLICAN','F','APORTOLICAN@trantor','12/03/1984','09/03/2015','B03',990000,0,429,80);
INSERT INTO EMPLEADOS VALUES(448,'ALEJANDRO','ENGALES','M','AENGALES@trantor','18/05/1960','17/05/1995','B07',1800000,0,103,280);
INSERT INTO EMPLEADOS VALUES(449,'ABEL','COLVA','M','ACOLVA@trantor','10/10/1967','02/10/2000','B07',1800000,0,448,280);
INSERT INTO EMPLEADOS VALUES(450,'AMELIA','LARIO','F','ALARIO@trantor','07/05/1974','04/05/2009','B07',1800000,0,448,280);
INSERT INTO EMPLEADOS VALUES(451,'JOEL','DERILO','M','JDERILO@trantor','16/03/1984','14/03/2015','B07',1800000,0,448,280);
INSERT INTO EMPLEADOS VALUES(452,'BRENDA','VALLELDE','F','BVALLELDE@trantor','25/10/1976','26/10/1994','B07',1800000,0,448,280);
INSERT INTO EMPLEADOS VALUES(453,'ELENA','VILLABAJA','F','EVILLABAJA@trantor','21/02/1966','14/02/2000','B07',1800000,0,448,280);
INSERT INTO EMPLEADOS VALUES(454,'EZEQUIEL','PIREZ','M','EPIREZ@trantor','01/04/1993','02/04/2015','C04',1190000,0,103,250);
INSERT INTO EMPLEADOS VALUES(455,'ALEXANDRA','AYARA','F','AAYARA@trantor','25/05/1960','22/05/1992','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(501,'HUGO','LINDER','M','HLINDER@trantor','24/02/1966','17/02/2002','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(502,'MIGUEL','THALUS','M','MTHALUS@trantor','27/05/1960','23/05/1989','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(503,'ARIANA','MARTIN','F','AMARTIN@trantor','24/03/1961','21/03/1989','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(504,'RAPHAEL','ALFAR','M','RALFAR@trantor','27/02/1966','25/02/1998','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(505,'ELIANA','RASH','F','ERASH@trantor','15/02/1980','08/02/2014','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(506,'ELIAS','SHEKT','M','ESHEKT@trantor','05/05/1965','26/04/2005','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(507,'ALICIA','AVARDAN','F','AAVARDAN@trantor','13/12/1980','08/12/2012','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(508,'EMILIA','SHEKT','F','ESHEKT@trantor','28/03/1984','27/03/2004','C04',1190000,0,454,250);
INSERT INTO EMPLEADOS VALUES(509,'EMILIANO','MARTIN','M','EMARTIN@trantor','28/12/1989','28/12/2014','B09',875000,0,103,40);
INSERT INTO EMPLEADOS VALUES(510,'EMILIO','MARTIN','M','EMARTIN@trantor','24/01/1985','25/01/2013','B09',875000,0,509,40);
INSERT INTO EMPLEADOS VALUES(511,'GUILLERMO','ALFAR','M','GALFAR@trantor','01/07/1978','30/06/2000','B09',875000,0,509,40);
INSERT INTO EMPLEADOS VALUES(512,'LEILA','CANTORO','F','LCANTORO@trantor','22/02/1980','16/02/2014','B09',875000,0,509,40);
INSERT INTO EMPLEADOS VALUES(513,'JAIME','ROSETTI','M','JROSETTI@trantor','15/04/1993','12/04/2013','D01',1400000,0,103,170);
INSERT INTO EMPLEADOS VALUES(514,'ALINA','ABEDUL','F','AABEDUL@trantor','29/01/1962','29/01/1989','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(515,'JAIRO','ARTAFIA','M','JARTAFIA@trantor','25/11/1985','26/11/2012','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(516,'ELISA','ARANA','F','EARANA@trantor','19/04/1970','16/04/1992','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(517,'IRIS','BRESNE','F','IBRESNE@trantor','11/06/1960','06/06/1990','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(518,'LUIS','BORJUES','M','LBORJUES@trantor','04/05/1979','02/05/1999','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(519,'OLIVER','BALLASTARO','M','OBALLASTARO@trantor','16/02/1971','16/02/2001','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(520,'OLIVIA','CANACCI','F','OCANACCI@trantor','03/02/1985','04/02/2004','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(521,'LILA','COTTA','F','LCOTTA@trantor','04/02/1985','05/02/2004','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(522,'KIRA','CERPETES','F','KCERPETES@trantor','25/04/1970','21/04/2000','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(523,'ORLANDO','TORRENS','M','OTORRENS@trantor','21/08/1982','16/08/2009','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(524,'NOELIA','GURRIETEZ','F','NGURRIETEZ@trantor','08/11/1990','05/11/2013','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(525,'CELESTE','ZAMBUDO','F','CZAMBUDO@trantor','22/02/1971','15/02/2006','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(526,'SELENA','FONTINE','F','SFONTINE@trantor','07/03/1980','08/03/2006','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(527,'VALENTINA','BARQUIARO','F','VBARQUIARO@trantor','16/04/1984','14/04/2011','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(528,'VALERIA','SETIA','F','VSETIA@trantor','21/09/1977','19/09/2013','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(529,'FELIPE','LUPIES','M','FLUPIES@trantor','23/06/1980','21/06/1999','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(530,'JULIA','MONTEBLANCO','F','JMONTEBLANCO@trantor','07/07/1979','02/07/2008','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(531,'JULIAN','VILLANOA','M','JVILLANOA@trantor','25/03/1989','27/03/2010','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(532,'JULIANA','LUBIN','F','JLUBIN@trantor','26/12/1971','22/12/2001','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(533,'JULIO','DOLGEDO','M','JDOLGEDO@trantor','26/09/1987','22/09/2005','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(534,'LILIAN','CRATOS','F','LCRATOS@trantor','05/11/1981','05/11/2002','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(535,'ISABEL','DORDIGEZ','F','IDORDIGEZ@trantor','11/10/1986','11/10/2009','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(536,'MELINA','BALIREN','F','MBALIREN@trantor','16/09/1991','13/09/2009','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(537,'TALIA','CARILO','F','TCARILO@trantor','22/08/1973','21/08/2003','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(538,'WILLIAM','ZORQUI','M','WZORQUI@trantor','02/07/1960','02/07/1993','D01',790850,0,513,170);
INSERT INTO EMPLEADOS VALUES(539,'ARMANDO','GOMEN','M','AGOMEN@trantor','06/12/1976','05/12/1998','D01',1490150,0,538,200);
INSERT INTO EMPLEADOS VALUES(540,'ROMAN','SAMIS','M','RSAMIS@trantor','07/12/1976','06/12/1994','D01',790850,0,538,200);
INSERT INTO EMPLEADOS VALUES(541,'TOMAS','NOLOSA','M','TNOLOSA@trantor','13/08/1987','09/08/2007','D01',790850,0,538,200);
INSERT INTO EMPLEADOS VALUES(542,'AGATHA','HACHEDOSO','F','AHACHEDOSO@trantor','11/03/1971','06/03/2009','D01',790850,0,538,200);
INSERT INTO EMPLEADOS VALUES(543,'JOAN','NAVORRA','F','JNAVORRA@trantor','23/09/1991','22/09/2014','D01',790850,0,538,200);
INSERT INTO EMPLEADOS VALUES(544,'XIMENA','JERTOS','F','XJERTOS@trantor','24/12/1985','20/12/2011','D01',790850,0,538,200);
INSERT INTO EMPLEADOS VALUES(545,'CAROL','ASARI','F','CASARI@trantor','30/08/1983','29/08/2003','D03',709800,0,103,100);
INSERT INTO EMPLEADOS VALUES(546,'RAMON','CANZARRA','M','RCANZARRA@trantor','23/10/1963','22/10/1993','D03',709800,0,545,100);
INSERT INTO EMPLEADOS VALUES(547,'SIMON','CANALES','M','SCANALES@trantor','11/07/1983','07/07/2011','D03',709800,0,545,100);
INSERT INTO EMPLEADOS VALUES(548,'SAMUEL','REBLOS','M','SREBLOS@trantor','28/09/1978','01/10/1996','D03',709800,0,545,100);
INSERT INTO EMPLEADOS VALUES(549,'LINDA','WASTON','F','LWASTON@trantor','18/03/1971','11/03/2003','D03',709800,0,545,100);
INSERT INTO EMPLEADOS VALUES(550,'SANDRA','SANCO','F','SSANCO@trantor','05/12/1977','01/12/2004','D03',709800,0,545,100);
INSERT INTO EMPLEADOS VALUES(551,'ERNESTO','DAQUESA','M','EDAQUESA@trantor','18/12/1976','17/12/2012','D03',709800,0,545,100);
INSERT INTO EMPLEADOS VALUES(552,'PENELOPE','LAUGARI','F','PLAUGARI@trantor','28/07/1992','30/07/2012','B06',1300000,0,538,200);
INSERT INTO EMPLEADOS VALUES(553,'DANIEL','MAZDEN','M','DMAZDEN@trantor','16/01/1972','10/01/2002','B06',1300000,0,551,200);
INSERT INTO EMPLEADOS VALUES(554,'DANIELA','CANALES','F','DCANALES@trantor','11/02/1990','08/02/2012','B06',1300000,0,551,200);
INSERT INTO EMPLEADOS VALUES(555,'DAYANA','NOVI','F','DNOVI@trantor','22/06/1988','18/06/2014','C02',900000,0,102,120);
INSERT INTO EMPLEADOS VALUES(556,'MONICA','PALVER','F','MPALVER@trantor','24/06/1975','20/06/2013','B05',900000,0,102,70);
INSERT INTO EMPLEADOS VALUES(557,'BENJAMIN','PARMA','M','BPARMA@trantor','01/02/1981','30/01/2000','B05',900000,0,102,70);
INSERT INTO EMPLEADOS VALUES(558,'SANTIAGO','PIRENNE','M','SPIRENNE@trantor','13/06/1979','14/06/2002','C02',890000,0,101,70);
INSERT INTO EMPLEADOS VALUES(559,'MANUEL','RODRIC','M','MRODRIC@trantor','16/02/1990','13/02/2011','C02',890000,0,101,70);
INSERT INTO EMPLEADOS VALUES(560,'GRETA','ALFAR','F','GALFAR@trantor','01/09/1987','28/08/2010','C02',890000,0,101,70);

ALTER TABLE departamentos ENABLE CONSTRAINT FKdep_director;

INSERT INTO movimientos VALUES (102, TO_DATE('25-JUL-2008', 'dd-MON-yyyy'), 'C04', 'A02',60,90);
INSERT INTO movimientos VALUES (101, TO_DATE('17-OCT-2004', 'dd-MON-yyyy'), 'B01', 'B02', 110,110);
INSERT INTO movimientos VALUES (101, TO_DATE('05-MAR-2009', 'dd-MON-yyyy'), 'B02', 'A02',110,90);
INSERT INTO movimientos VALUES (201, TO_DATE('29-DEC-2009', 'dd-MON-yyyy'), 'D05', 'B08',20,20);
INSERT INTO movimientos VALUES (114, TO_DATE('31-JAN-2010', 'dd-MON-yyyy'), 'D01', 'B05',50,30);
INSERT INTO movimientos VALUES (122, TO_DATE('11-DEC-2011', 'dd-MON-yyyy'), 'D01', 'B06',50,50);
INSERT INTO movimientos VALUES (200, TO_DATE('12-NOV-2009', 'dd-MON-yyyy'), 'B04', 'D03',90,90);
INSERT INTO movimientos VALUES (200, TO_DATE('27-JUN-2013', 'dd-MON-yyyy'), 'D03', 'D03',90,10);
INSERT INTO movimientos VALUES (176, TO_DATE('21-AUG-2011', 'dd-MON-yyyy'), 'C05', 'B03', 80, 80);
INSERT INTO movimientos VALUES (176, TO_DATE('30-SEP-2012', 'dd-MON-yyyy'), 'B03', 'C05' ,80, 80);
INSERT INTO movimientos VALUES (203, TO_DATE('09-OCT-2008', 'dd-MON-yyyy'), 'C02', 'B09',180,40);

--commit;

