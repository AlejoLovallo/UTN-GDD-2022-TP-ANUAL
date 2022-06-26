USE [GD1C2022]
GO

--DROP PREVENTIVO DE FUNCIONES------------------------------------------------------------
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='FN' AND NAME = 'obtener_cuatrimestre' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP FUNCTION GRUPO_9800.obtener_cuatrimestre
GO


--DROP PREVENTIVO DE VIEWS----------------------------------------------------------------

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'desgasteDeComponentePorVuelta' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.desgasteDeComponentePorVuelta
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'top3CircuitosMasPeligrosos' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.top3CircuitosMasPeligrosos
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'promedioIncidentesPorEscuderiaXanio' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.promedioIncidentesPorEscuderiaXanio
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'maximaVelocidadPorAutoPorSector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.maximaVelocidadPorAutoPorSector
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'top3CircuitosMayorConsumoDeCombustible' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.top3CircuitosMayorConsumoDeCombustible
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'mejorTiempoDeVuelta' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.mejorTiempoDeVuelta
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'paradasPorCircuito' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.paradasPorCircuito
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'tiempoPromedioPorCuatrimestre' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.tiempoPromedioPorCuatrimestre
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='V' AND NAME = 'top3MayorTiempoEnBoxes' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP VIEW GRUPO_9800.top3MayorTiempoEnBoxes
GO
--DROP PREVENTIVO DE TABLAS---------------------------------------------------------------

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_DESGASTE_VISTAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_DESGASTE_VISTAS
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_INCIDENTES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_INCIDENTES
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_CIRCUITO_VISTAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_CIRCUITO_VISTAS
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_PARADAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_PARADAS
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_CIRCUITO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_CIRCUITO
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_TIEMPO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_TIEMPO
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_neumatico
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_motor
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_freno
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_caja
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_piloto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_piloto
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_tipo_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_tipo_neumatico
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_vehiculo
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_ESCUDERIA' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_ESCUDERIA
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_VEHICULO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_VEHICULO
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_TIPO_SECTOR' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_TIPO_SECTOR
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_PARADA_BOX' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_PARADA_BOX
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_INCIDENTE' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_INCIDENTE
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_TIPO_INCIDENTE' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_TIPO_INCIDENTE
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_CARRERA' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_CARRERA
GO


--DROP PREVENTIVO DE PROCEDURES---------------------------------------------------------------
IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_circuito' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_circuito
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_vehiculo
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_caja
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_motor
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_neumatico
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_freno
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_tipo_incidente' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_tipo_incidente
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_DESGASTE_VISTAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_DESGASTE_VISTAS
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_piloto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_piloto
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_tipo_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_tipo_neumatico
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_escuderia' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_escuderia
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_tipo_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_tipo_sector
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_parada_box' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_parada_box
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_CIRCUITO_VISTAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_CIRCUITO_VISTAS
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_PARADAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_PARADAS
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_INCIDENTE' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_INCIDENTE
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_INCIDENTE' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_INCIDENTE
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_TIPO_INCIDENTE' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_TIPO_INCIDENTE
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_INCIDENTE_POR_AUTO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_INCIDENTE_POR_AUTO
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_CARRERA' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_CARRERA
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_SECTOR' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_SECTOR
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_TIEMPO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_TIEMPO
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_PARADAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_PARADAS
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_BI_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.CREATE_BI_TABLES
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_DIMENSION_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.CREATE_DIMENSION_TABLES
GO

-----------------------------------------------------------------------------------------------------
-- Creacion de tablas dimensionales

CREATE PROCEDURE [GRUPO_9800].CREATE_DIMENSION_TABLES
AS
BEGIN

		CREATE TABLE GRUPO_9800.BI_tipo_neumatico (
			id_tipo_neumatico smallint PRIMARY KEY,
			detalle nvarchar(255)
		);

		CREATE TABLE GRUPO_9800.BI_neumatico (
			neumatico_nro_serie NVARCHAR(255) PRIMARY KEY,
			id_tipo_neumatico smallint 
		);
		 CREATE TABLE GRUPO_9800.BI_caja (
            caja_nro_serie NVARCHAR(255) PRIMARY KEY,
            caja_modelo NVARCHAR(50) ,
        );
    
        CREATE TABLE GRUPO_9800.BI_motor (
            motor_nro_serie NVARCHAR(255) PRIMARY KEY,
            motor_modelo NVARCHAR(50) 
        );
    
        CREATE TABLE GRUPO_9800.BI_freno (
            freno_nro_serie NVARCHAR(255) PRIMARY KEY,
            freno_tamanio_pastilla decimal(18,2) 
        );
	
		CREATE TABLE GRUPO_9800.BI_piloto (
            cod_piloto INT PRIMARY KEY,
            piloto_nombre NVARCHAR(50) ,
            piloto_apellido NVARCHAR(50) ,
            piloto_nacionalidad NVARCHAR(50) ,
            piloto_fecha_nacimiento DATETIME 
        );
	
		CREATE TABLE GRUPO_9800.BI_tipo_incidente (
            id_tipo_incidente smallint PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

		CREATE TABLE GRUPO_9800.BI_tipo_sector (
            id_tipo_sector smallint PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

		CREATE TABLE GRUPO_9800.BI_parada_box (
            cod_parada_box INT PRIMARY KEY,
            parada_box_vuelta numeric(18,0),
            parada_box_tiempo numeric(18,2),
            codigo_carrera INT,
		);

		CREATE TABLE GRUPO_9800.BI_escuderia (
            cod_escuderia INT PRIMARY KEY,
            escuderia_nombre NVARCHAR(255) ,
            escuderia_nacionalidad NVARCHAR(255) 
		);

		CREATE TABLE GRUPO_9800.BI_circuito (
            circuito_codigo INT PRIMARY KEY,
            circuito_nombre NVARCHAR(255)  ,
            id_pais smallint,
        );

		CREATE TABLE GRUPO_9800.BI_incidente(
			cod_incidente INT PRIMARY KEY,
			codigo_sector INT ,
			circuito_codigo INT ,
			codigo_carrera INT ,
			tiempo_incidente decimal(18,2) ,
			id_incidente_bandera INT ,
		);

		CREATE TABLE GRUPO_9800.BI_carrera (
			codigo_carrera INT PRIMARY KEY,
			carrera_fecha date,
			carrera_clima varchar(100),
			carrera_cant_vueltas INT,
			circuito_codigo INT 
		);
		CREATE TABLE GRUPO_9800.BI_vehiculo (
            vehiculo_numero INT,
            vehiculo_modelo NVARCHAR(255),
            cod_escuderia INT ,
            cod_piloto INT ,
            PRIMARY KEY (vehiculo_numero, cod_escuderia)
        );
END
GO

------------------------------------------------------------------------------------------
-- Procedure creacion de tablas de hechos

CREATE PROCEDURE [GRUPO_9800].CREATE_BI_TABLES
AS
BEGIN
		
		 CREATE TABLE GRUPO_9800.BI_TIEMPO(
            COD_TIEMPO INT IDENTITY PRIMARY KEY,
            ANIO INT not null,
			CUATRIMESTRE INT NOT NULL
        );
		CREATE TABLE GRUPO_9800.BI_CIRCUITO_VISTAS(
            VEHICULO_NUMERO INT ,
            COD_ESCUDERIA INT,
            CIRCUITO_CODIGO INT,
			COD_PILOTO INT,
            MEJOR_TIEMPO_VUELTA NUMERIC(18,10),
            MAXIMO_COMBUSTIBLE_CONSUMIDO DECIMAL(18,2),
            VELOCIDAD DECIMAL(18,2),
            ID_TIPO_SECTOR smallint,
			COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO,
			PRIMARY KEY(VEHICULO_NUMERO,COD_ESCUDERIA,CIRCUITO_CODIGO,ID_TIPO_SECTOR,COD_PILOTO,COD_TIEMPO),
			FOREIGN KEY(VEHICULO_NUMERO,COD_ESCUDERIA) REFERENCES GRUPO_9800.VEHICULO
		)

        CREATE TABLE GRUPO_9800.BI_DESGASTE_VISTAS(
			BI_ID_DESGASTE INT IDENTITY PRIMARY KEY,
            NUMERO_VUELTA NUMERIC(18,0),
            VEHICULO_NUMERO INT ,
            COD_ESCUDERIA INT,
            CIRCUITO_CODIGO INT REFERENCES GRUPO_9800.BI_CIRCUITO,
			CAJA_NRO_SERIE NVARCHAR(255) REFERENCES GRUPO_9800.BI_CAJA,
			MOTOR_NRO_SERIE NVARCHAR(255) REFERENCES GRUPO_9800.BI_MOTOR,
			NEUMATICO_NRO_SERIE1 NVARCHAR(255),
			NEUMATICO_NRO_SERIE2 NVARCHAR(255),
			NEUMATICO_NRO_SERIE3 NVARCHAR(255),
			NEUMATICO_NRO_SERIE4 NVARCHAR(255),
			FRENO_NRO_SERIE1 NVARCHAR(255) REFERENCES GRUPO_9800.BI_FRENO,
			FRENO_NRO_SERIE2 NVARCHAR(255) REFERENCES GRUPO_9800.BI_FRENO,
			FRENO_NRO_SERIE3 NVARCHAR(255) REFERENCES GRUPO_9800.BI_FRENO,
			FRENO_NRO_SERIE4 NVARCHAR(255) REFERENCES GRUPO_9800.BI_FRENO,
            ID_TIPO_NEUMATICO smallint REFERENCES GRUPO_9800.BI_TIPO_NEUMATICO,
			DESGASTE_CAJA NUMERIC (18,2),
			POTENCIA_MOTOR NUMERIC(18,6),
			DESGASTE_FRENO DECIMAL(18,2),
			DESGASTE_NEUMATICO DECIMAL(18,6)
			FOREIGN KEY(VEHICULO_NUMERO,COD_ESCUDERIA) REFERENCES GRUPO_9800.VEHICULO
		);
 
        CREATE TABLE GRUPO_9800.BI_PARADAS (
            COD_ESCUDERIA INT REFERENCES GRUPO_9800.BI_ESCUDERIA,
            CIRCUITO_CODIGO INT REFERENCES GRUPO_9800.BI_CIRCUITO,
            COD_PARADA_BOX INT REFERENCES GRUPO_9800.BI_PARADA_BOX,
            TIEMPO_PARADA_BOX NUMERIC(18,2),
            COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO
			PRIMARY KEY(COD_ESCUDERIA,CIRCUITO_CODIGO,COD_PARADA_BOX,COD_TIEMPO)
		);
  
        CREATE TABLE GRUPO_9800.BI_INCIDENTES (
            CIRCUITO_CODIGO INT REFERENCES GRUPO_9800.BI_CIRCUITO,
            ID_TIPO_SECTOR SMALLINT REFERENCES GRUPO_9800.BI_TIPO_SECTOR,
            COD_ESCUDERIA INT REFERENCES GRUPO_9800.BI_ESCUDERIA,
            CODIGO_INCIDENTE INT REFERENCES GRUPO_9800.BI_INCIDENTE,
			INCIDENTES_TOTALES_POR_ANIO_POR_ESCUDERIA INT,
            COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO
			PRIMARY KEY(CIRCUITO_CODIGO,ID_TIPO_SECTOR,COD_ESCUDERIA,CODIGO_INCIDENTE,COD_TIEMPO)
        );
    
       
END
GO

-----------------------------------------------------------------------------------------------------
-- Procedures migracion de tablas

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_vehiculo
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_vehiculo
	SELECT * FROM GRUPO_9800.vehiculo
END
GO
-- BI Tipo de neumatico

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_tipo_neumatico
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_tipo_neumatico
	SELECT * FROM GRUPO_9800.tipo_neumatico
END
GO
-- BI Piloto 
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_Piloto
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_piloto
	SELECT * FROM GRUPO_9800.piloto
END
GO

-- BI Neumatico 
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_neumatico
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_neumatico
	SELECT * FROM GRUPO_9800.neumatico
END
GO

-- BI Motor 
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_motor
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_motor
	SELECT * FROM GRUPO_9800.motor
END
GO

-- BI Freno

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_freno
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_freno
	SELECT * FROM GRUPO_9800.freno
END
GO

-- BI Caja
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_caja
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_caja
	SELECT * FROM GRUPO_9800.caja
END
GO
-- BI Tipo de incidente
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_tipo_incidente
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_tipo_incidente
	SELECT * FROM GRUPO_9800.tipo_incidente
END
GO

-- BI Incidente
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_incidente
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_incidente
	SELECT * FROM GRUPO_9800.incidente
END
GO

-- BI Tipo de sector
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_tipo_sector
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_tipo_sector 
	SELECT * FROM GRUPO_9800.tipo_sector
END
GO
-- BI Parada de box
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_parada_box
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_parada_box
	SELECT * FROM GRUPO_9800.parada_box
END
GO
-- BI Escuderia
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_escuderia
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_escuderia
	SELECT * FROM GRUPO_9800.escuderia
END
GO
-- BI Circuito
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_circuito
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_circuito
	SELECT * FROM GRUPO_9800.circuito
END
GO

-- BI Carrera
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_carrera
AS 
BEGIN
	INSERT INTO GRUPO_9800.BI_carrera
	SELECT * FROM GRUPO_9800.carrera
END
GO



/*MIGRACIÓN*/

-- Migracion tabla de hechos de incidentes
GO

CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_DESGASTE_VISTAS
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_DESGASTE_VISTAS
	(VEHICULO_NUMERO,COD_ESCUDERIA,CIRCUITO_CODIGO,NEUMATICO_NRO_SERIE1,NEUMATICO_NRO_SERIE2,NEUMATICO_NRO_SERIE3,NEUMATICO_NRO_SERIE4,
	FRENO_NRO_SERIE1,FRENO_NRO_SERIE2,FRENO_NRO_SERIE3,FRENO_NRO_SERIE4,CAJA_NRO_SERIE,MOTOR_NRO_SERIE,
	NUMERO_VUELTA,DESGASTE_CAJA,DESGASTE_NEUMATICO,DESGASTE_FRENO,POTENCIA_MOTOR)
	SELECT  
	v.vehiculo_numero,
	v.cod_escuderia,
	circ.circuito_codigo,
	(SELECT neumatico_nro_serie FROM GRUPO_9800.telemetria_neumatico WHERE ta.tele_auto_cod = tele_auto_cod AND tele_neumatico_posicion = 'Delantero Izquierdo'),
	(SELECT neumatico_nro_serie FROM GRUPO_9800.telemetria_neumatico WHERE ta.tele_auto_cod = tele_auto_cod AND tele_neumatico_posicion = 'Delantero Derecho'),
	(SELECT neumatico_nro_serie FROM GRUPO_9800.telemetria_neumatico WHERE ta.tele_auto_cod = tele_auto_cod AND tele_neumatico_posicion = 'Trasero Izquierdo'),
	(SELECT neumatico_nro_serie FROM GRUPO_9800.telemetria_neumatico WHERE ta.tele_auto_cod = tele_auto_cod AND tele_neumatico_posicion = 'Trasero Derecho'),
	(SELECT freno_nro_serie FROM GRUPO_9800.telemetria_freno WHERE ta.tele_auto_cod = tele_auto_cod AND tele_freno_posicion= 'Delantero Izquierdo'),
	(SELECT freno_nro_serie FROM GRUPO_9800.telemetria_freno WHERE ta.tele_auto_cod = tele_auto_cod AND tele_freno_posicion = 'Delantero Derecho'),
	(SELECT freno_nro_serie FROM GRUPO_9800.telemetria_freno WHERE ta.tele_auto_cod = tele_auto_cod AND tele_freno_posicion = 'Trasero Izquierdo'),
	(SELECT freno_nro_serie FROM GRUPO_9800.telemetria_freno WHERE ta.tele_auto_cod = tele_auto_cod AND tele_freno_posicion = 'Trasero Derecho'),
	(SELECT caja_nro_serie FROM GRUPO_9800.telemetria_caja WHERE ta.tele_auto_cod = tele_auto_cod GROUP BY caja_nro_serie),
	(SELECT motor_nro_serie FROM GRUPO_9800.telemetria_motor WHERE ta.tele_auto_cod = tele_auto_cod GROUP BY motor_nro_serie),
	ta.tele_auto_numero_vuelta,
	(SELECT tele_caja_desgaste FROM GRUPO_9800.telemetria_caja WHERE ta.tele_auto_cod = tele_auto_cod),
	(SELECT SUM(tele_neumatico_profundidad) FROM GRUPO_9800.telemetria_neumatico WHERE ta.tele_auto_cod = tele_auto_cod),
	(SELECT SUM(tele_freno_grosor_pastilla) FROM GRUPO_9800.telemetria_freno WHERE ta.tele_auto_cod = tele_auto_cod),
	(SELECT tele_motor_potencia FROM GRUPO_9800.telemetria_motor WHERE ta.tele_auto_cod = tele_auto_cod)
	FROM GRUPO_9800.telemetria_auto ta
	JOIN GRUPO_9800.BI_vehiculo v ON v.cod_escuderia = ta.cod_escuderia AND v.vehiculo_numero = ta.vehiculo_numero	
	JOIN GRUPO_9800.BI_circuito circ ON circ.circuito_codigo = ta.circuito_codigo
	GROUP BY ta.tele_auto_cod,
	v.vehiculo_numero,
	v.cod_escuderia,
	circ.circuito_codigo,
	ta.tele_auto_numero_vuelta

END
GO

GO
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_INCIDENTE
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_INCIDENTES (CIRCUITO_CODIGO,ID_TIPO_SECTOR,COD_ESCUDERIA,CODIGO_INCIDENTE,INCIDENTES_TOTALES_POR_ANIO_POR_ESCUDERIA,COD_TIEMPO)
    SELECT i.circuito_codigo,s.id_tipo_sector,ia.cod_escuderia,ia.cod_incidente,
	(SELECT count(inc_a.cod_incidente) 
	FROM GRUPO_9800.BI_incidente inc 
	JOIN GRUPO_9800.incidente_por_auto inc_a ON inc_a.cod_incidente = inc.cod_incidente
	JOIN GRUPO_9800.BI_carrera carr ON inc.codigo_carrera = carr.codigo_carrera
	WHERE YEAR(carr.carrera_fecha) = t.anio
	AND inc_a.cod_escuderia = ia.cod_escuderia
	GROUP BY YEAR(carr.carrera_fecha),inc_a.cod_escuderia) 'Incidentes totales',
	t.cod_tiempo
	FROM GRUPO_9800.BI_circuito c
	JOIN GRUPO_9800.BI_incidente i ON c.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.incidente_por_auto ia ON i.cod_incidente = ia.cod_incidente
	JOIN GRUPO_9800.sector s ON s.codigo_sector = i.codigo_sector AND s.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_carrera ca ON i.codigo_carrera = ca.codigo_carrera
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(ca.carrera_fecha) = t.anio 
    GROUP BY i.circuito_codigo,s.id_tipo_sector,ia.cod_escuderia,ia.cod_incidente, t.anio,t.cod_tiempo
END
GO

-- Migracion tabla de hechos de Circuitos vistas

CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_CIRCUITO_VISTAS
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_CIRCUITO_VISTAS (COD_ESCUDERIA,CIRCUITO_CODIGO,VEHICULO_NUMERO,COD_PILOTO,MEJOR_TIEMPO_VUELTA,MAXIMO_COMBUSTIBLE_CONSUMIDO,VELOCIDAD,ID_TIPO_SECTOR,COD_TIEMPO)
	SELECT tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,v.cod_piloto,
	(SELECT MIN(tele_auto_tiempo_vuelta) FROM GRUPO_9800.telemetria_auto ta
	WHERE ta.cod_escuderia = tele.cod_escuderia 
	AND ta.circuito_codigo = tele.circuito_codigo 
	AND ta.tele_auto_tiempo_vuelta <> 0 
	GROUP BY ta.cod_escuderia,ta.circuito_codigo) 'Minimo tiempo de vuelta por escuderia',
	(SELECT SUM(tele_auto_combustible)/COUNT(vehiculo_numero) FROM GRUPO_9800.telemetria_auto WHERE circuito_codigo = tele.circuito_codigo GROUP BY circuito_codigo) 'Combustible promedio por circuito',
	(SELECT MAX(ta.tele_auto_velocidad)
	FROM GRUPO_9800.telemetria_auto ta
	JOIN GRUPO_9800.sector se ON se.codigo_sector = ta.codigo_sector
	WHERE ta.vehiculo_numero = tele.vehiculo_numero 
	AND tele.cod_escuderia = ta.cod_escuderia 
	AND s.id_tipo_sector = se.id_tipo_sector
	AND tele.circuito_codigo = ta.circuito_codigo
	GROUP BY ta.vehiculo_numero,ta.cod_escuderia,se.id_tipo_sector,ta.circuito_codigo) 'Velocidad maxima' ,
	s.id_tipo_sector,
	t.cod_tiempo
	FROM GRUPO_9800.telemetria_auto tele
	JOIN GRUPO_9800.sector s ON tele.codigo_sector = s.codigo_sector
	JOIN GRUPO_9800.BI_vehiculo v ON tele.vehiculo_numero = v.vehiculo_numero AND tele.cod_escuderia = v.cod_escuderia
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(tele.tele_fecha) = t.anio  AND GRUPO_9800.obtener_cuatrimestre(tele.tele_fecha) = t.cuatrimestre
	GROUP BY tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo,v.cod_piloto
	order by tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo,v.cod_piloto
END


--Migracion tabla de hechos paradas
GO

CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_PARADAS --LISTO
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_PARADAS (COD_ESCUDERIA,CIRCUITO_CODIGO,COD_PARADA_BOX,TIEMPO_PARADA_BOX,COD_TIEMPO)
    SELECT e.cod_escuderia, ci.circuito_codigo, pbv.cod_parada_box,pb.parada_box_tiempo,t.cod_tiempo
    FROM GRUPO_9800.parada_box_por_vehiculo pbv JOIN GRUPO_9800.parada_box pb ON (pbv.cod_parada_box = pb.cod_parada_box)
                                             JOIN GRUPO_9800.escuderia e ON (pbv.cod_escuderia = e.cod_escuderia)
                                             JOIN GRUPO_9800.carrera ca ON (pb.codigo_carrera = ca.codigo_carrera)
                                             JOIN GRUPO_9800.circuito ci ON (ca.circuito_codigo = ci.circuito_codigo)
											 JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(ca.carrera_fecha) = t.anio
																		AND GRUPO_9800.obtener_cuatrimestre(ca.carrera_fecha) = t.cuatrimestre
	GROUP BY e.cod_escuderia, ci.circuito_codigo, pbv.cod_parada_box,pb.parada_box_tiempo,t.cod_tiempo
END
GO

-- Tabla de tiempo

CREATE FUNCTION GRUPO_9800.obtener_cuatrimestre (@Date smalldatetime )
RETURNS INT
AS 
BEGIN
	
	DECLARE @CUATRIMESTRE INT
	
	SET @CUATRIMESTRE =  CASE WHEN MONTH(@Date) >= 1 AND MONTH(@Date) <=4 then 1
	WHEN MONTH(@Date) > 4 AND MONTH(@Date) <= 8  then 2
	WHEN MONTH(@Date) > 8 AND MONTH(@Date) <= 12  then 3
	END

	RETURN @CUATRIMESTRE
END  

GO
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_TIEMPO
AS
BEGIN
	DECLARE date_cursor CURSOR FOR SELECT CARRERA_FECHA FROM GRUPO_9800.CARRERA
	
	DECLARE @Date DATETIME
	DECLARE @ANIO INT
	DECLARE @Cuatrimestre INT

	OPEN date_cursor
	FETCH NEXT FROM date_cursor into @Date

	WHILE(@@FETCH_STATUS = 0)
	BEGIN
			SET @Anio = YEAR(@Date)
			SET @Cuatrimestre = GRUPO_9800.obtener_cuatrimestre(@Date)

			IF NOT EXISTS (SELECT * FROM GRUPO_9800.BI_TIEMPO WHERE (ANIO = @Anio AND Cuatrimestre = @Cuatrimestre))
				INSERT INTO GRUPO_9800.BI_tiempo (ANIO, CUATRIMESTRE) VALUES (@Anio, @Cuatrimestre)
			
			FETCH NEXT FROM date_cursor into @Date
	END

	CLOSE date_cursor
	DEALLOCATE date_cursor
END
GO


----------------------------------------------------------------------------------------------------------------------
-- Ejecuto creacion de tablas

EXEC [GRUPO_9800].CREATE_DIMENSION_TABLES
EXEC [GRUPO_9800].CREATE_BI_TABLES
EXEC [GRUPO_9800].MIGRAR_BI_incidente
EXEC [GRUPO_9800].MIGRAR_BI_tipo_sector
EXEC [GRUPO_9800].MIGRAR_BI_parada_box
EXEC [GRUPO_9800].MIGRAR_BI_circuito
EXEC [GRUPO_9800].MIGRAR_BI_escuderia
EXEC [GRUPO_9800].MIGRAR_BI_carrera
EXEC [GRUPO_9800].MIGRAR_BI_caja
EXEC [GRUPO_9800].MIGRAR_BI_motor
EXEC [GRUPO_9800].MIGRAR_BI_freno
EXEC [GRUPO_9800].MIGRAR_BI_neumatico
EXEC [GRUPO_9800].MIGRAR_BI_tipo_incidente
EXEC [GRUPO_9800].MIGRAR_BI_tipo_neumatico
EXEC [GRUPO_9800].MIGRAR_BI_piloto
EXEC [GRUPO_9800].MIGRAR_BI_vehiculo
EXEC [GRUPO_9800].MIGRAR_BI_TIEMPO
EXEC [GRUPO_9800].MIGRATE_BI_INCIDENTE
EXEC [GRUPO_9800].MIGRATE_BI_CIRCUITO_VISTAS
EXEC [GRUPO_9800].MIGRATE_BI_PARADAS
EXEC [GRUPO_9800].MIGRATE_BI_DESGASTE_VISTAS

-----------------------------------------------------------------------------------------------------------------------
-- Ejecuto procedures de tabla de hechos



/*
Los 3 circuitos más peligrosos del año, en función mayor cantidad de 
incidentes  
*/

-- OK
GO
CREATE VIEW GRUPO_9800.top3CircuitosMasPeligrosos
AS

	SELECT groups.codigo,groups.anio,groups.[incidentes_por_anio] FROM (
	SELECT i.circuito_codigo [codigo],t.anio [anio] ,COUNT(DISTINCT i.codigo_incidente) [incidentes_por_anio]
		  ,ROW_NUMBER() OVER (
						 PARTITION BY t.anio
						 ORDER BY COUNT(DISTINCT i.codigo_incidente) DESC
         		   ) AS [ROW NUMBER]
	  FROM GRUPO_9800.BI_incidentes i
		JOIN GRUPO_9800.BI_TIEMPO t ON t.cod_tiempo = i.cod_tiempo
		GROUP BY i.circuito_codigo,t.anio
	  ) groups
	WHERE groups.[ROW NUMBER] <=3
	
GO




-- OK 
CREATE VIEW GRUPO_9800.promedioIncidentesPorEscuderiaXanio
AS
	SELECT  COUNT(DISTINCT i.codigo_incidente) / i.incidentes_totales_por_anio_por_escuderia 'Promedio de incidentes',i.cod_escuderia,t.anio,i.id_tipo_sector
	FROM GRUPO_9800.BI_incidentes i
	JOIN GRUPO_9800.BI_TIEMPO t ON t.cod_tiempo = i.cod_tiempo 
	GROUP BY i.cod_escuderia,t.anio,i.id_tipo_sector,i.incidentes_totales_por_anio_por_escuderia

GO
/*
Cantidad de paradas por circuito por escudería por año.
*/

CREATE VIEW GRUPO_9800.paradasPorCircuito
AS
	SELECT COUNT(cod_parada_box) 'Cantidad de paradas',p.circuito_codigo,p.cod_escuderia,t.anio
	FROM GRUPO_9800.BI_paradas p
	JOIN GRUPO_9800.BI_TIEMPO t ON p.cod_tiempo = t.cod_tiempo
	GROUP BY p.circuito_codigo,p.cod_escuderia,t.anio

/*
Tiempo promedio que tardó cada escudería en las paradas por cuatrimestre.
*/
GO
CREATE VIEW GRUPO_9800.tiempoPromedioPorCuatrimestre
AS
	SELECT AVG(tiempo_parada_box) 'Tiempo promedio en parada de box',p.cod_escuderia,t.cuatrimestre,t.anio
	FROM GRUPO_9800.BI_paradas p
	JOIN GRUPO_9800.BI_TIEMPO t ON p.cod_tiempo = t.cod_tiempo
	GROUP BY p.cod_escuderia,t.cuatrimestre,t.anio



GO
CREATE VIEW GRUPO_9800.top3MayorTiempoEnBoxes
AS
	SELECT TOP 3 circuito_codigo,SUM(TIEMPO_PARADA_BOX) 'Tiempo consumido por circuito'
	FROM GRUPO_9800.BI_paradas
	GROUP BY circuito_codigo DESC

/*
Máxima velocidad alcanzada por cada auto en cada tipo de sector de cada 
circuito.
*/ 

-- OK
GO
CREATE VIEW GRUPO_9800.maximaVelocidadPorAutoPorSector
AS
	SELECT MAX(velocidad) 'Maxima velocidad alcanzada', vehiculo_numero,cod_escuderia, id_tipo_sector, circuito_codigo
	FROM GRUPO_9800.BI_circuito_vistas
	GROUP BY vehiculo_numero,cod_escuderia,id_tipo_sector,circuito_codigo


/*
Los 3 de circuitos con mayor consumo de combustible promedio
*/
 -- OK

GO
CREATE VIEW GRUPO_9800.top3CircuitosMayorConsumoDeCombustible
AS
	SELECT TOP 3 circuito_codigo, maximo_combustible_consumido
	FROM GRUPO_9800.BI_circuito_vistas
	GROUP BY circuito_codigo, maximo_combustible_consumido

/*
 Mejor tiempo de vuelta de cada escudería por circuito por año. 
El mejor tiempo está dado por el mínimo tiempo en que un auto logra 
realizar una vuelta de un circuito.
*/
-- OK

GO
CREATE VIEW GRUPO_9800.mejorTiempoDeVuelta
AS
	SELECT MIN(MEJOR_TIEMPO_VUELTA) 'Minimo tiempo de vuelta',cod_escuderia,circuito_codigo,t.anio
	FROM GRUPO_9800.BI_circuito_vistas cv
	JOIN GRUPO_9800.BI_TIEMPO t ON t.COD_TIEMPO = cv.COD_TIEMPO
	GROUP BY cod_escuderia,circuito_codigo,t.anio

--Hay que ver porque los tipos de sector del 1 y el 2 me dan lo mismo

/*
Desgaste promedio de cada componente de cada auto por vuelta por 
circuito. 
Tener en cuenta que, para el cálculo del desgaste de los neumáticos, se 
toma la diferencia de mm del mismo entre la medición inicial y final de 
cada vuelta. Lo mismo aplica para el desgaste de frenos. 
Para el cálculo del desgaste del motor se toma en cuenta la perdida de 
potencia. 
*/

GO
CREATE VIEW GRUPO_9800.desgasteDeComponentePorVuelta
AS
SELECT vehiculo_numero,cod_escuderia,circuito_codigo,caja_nro_serie,motor_nro_serie,neumatico_nro_serie1,neumatico_nro_serie2,neumatico_nro_serie3,neumatico_nro_serie4,
freno_nro_serie1,freno_nro_serie2,freno_nro_serie3,freno_nro_serie4,
MAX(desgaste_caja) - MIN (desgaste_caja) / COUNT(distinct numero_vuelta) 'Desgaste promedio de la caja por auto por vuelta por circuito',
MAX(potencia_motor) - MIN (potencia_motor) / COUNT(distinct numero_vuelta) 'Desgaste promedio del motor por auto por vuelta por circuito',
(MAX(desgaste_neumatico) - MIN(desgaste_neumatico))/ (4 * COUNT(DISTINCT numero_vuelta)) 'Desgaste promedio de la neumatico por vuelta por circuito',
(MAX(desgaste_freno) - MIN(desgaste_freno))/ (4 * COUNT(DISTINCT desgaste_freno)) 'Desgaste promedio del freno por auto por vuelta por circuito' 
FROM GRUPO_9800.BI_DESGASTE_VISTAS
GROUP BY vehiculo_numero,cod_escuderia,circuito_codigo,caja_nro_serie,motor_nro_serie,neumatico_nro_serie1,neumatico_nro_serie2,neumatico_nro_serie3,neumatico_nro_serie4,
freno_nro_serie1,freno_nro_serie2,freno_nro_serie3,freno_nro_serie4
GO

SELECT * FROM GRUPO_9800.top3MayorTiempoEnBoxes