USE [GD1C2022]
GO

--DROP PREVENTIVO DE FUNCIONES------------------------------------------------------------
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='FN' AND NAME = 'obtener_cuatrimestre' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP FUNCTION GRUPO_9800.obtener_cuatrimestre
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='FN' AND NAME = 'get_codigo_tiempo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP FUNCTION GRUPO_9800.get_codigo_tiempo
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='FN' AND NAME = 'obtener_anio' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP FUNCTION GRUPO_9800.obtener_anio
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='FN' AND NAME = 'IsZero' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP FUNCTION GRUPO_9800.IsZero
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

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_fact_table_telemetria' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_fact_table_telemetria
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_fact_table_paradas_de_box' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_fact_table_paradas_de_box
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_fact_table_incidentes' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_fact_table_incidentes
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_circuito' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_circuito
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_tiempo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_tiempo
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_tipo_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_tipo_neumatico
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_tipo_incidente' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_tipo_incidente
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_piloto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_piloto
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_vehiculo
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_escuderia' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_escuderia
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_sector
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_carrera' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_carrera
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_tipo_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_tipo_sector
GO

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME =	'BI_temp_neumaticos' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_neumaticos

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_frenos' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_frenos

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_caja
	
IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_motor
	
IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_combustible' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_combustible

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_tiempo_de_vuelta' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_tiempo_de_vuelta

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_desgaste_caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_desgaste_caja

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_desgaste_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_desgaste_motor

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_desgaste_freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_desgaste_freno

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_desgaste_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_desgaste_neumatico

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_consumo_combustible' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_consumo_combustible

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_telemetria_caja_y_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_telemetria_caja_y_motor

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_telemetria_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_telemetria_neumatico
	
IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_telemetria_freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_telemetria_freno

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_tiempo_de_vuelta' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_tiempo_de_vuelta

IF EXISTS (SELECT SCHEMA_NAME(SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE = 'U' AND NAME = 'BI_temp_tiempo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_temp_tiempo

--DROP PREVENTIVO DE PROCEDURES---------------------------------------------------------------
IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_fact_table_telemetria' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_fact_table_telemetria
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_fact_table_paradas_de_box' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_fact_table_paradas_de_box
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_fact_table_incidentes' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_fact_table_incidentes
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_circuito' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_circuito
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_sector
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_vehiculo
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_escuderia' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_escuderia
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_tipo_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_tipo_sector
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_tiempo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_tiempo
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_carrera' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_carrera
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_tipo_incidente' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_tipo_incidente
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_piloto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_piloto
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_tipo_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_tipo_neumatico
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_BI_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.CREATE_BI_TABLES
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_DIMENSION_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.CREATE_DIMENSION_TABLES
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_BI_TEMPORAL_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.CREATE_BI_TEMPORAL_TABLES
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'DROP_BI_temp_tables' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.DROP_BI_temp_tables
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_temp_tables' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_temp_tables
GO
-----------------------------------------------------------------------------------------------------
-- Creacion de tablas dimensionales

CREATE PROCEDURE [GRUPO_9800].CREATE_DIMENSION_TABLES
AS
BEGIN

		CREATE TABLE GRUPO_9800.BI_piloto (
            cod_piloto INT PRIMARY KEY,
            piloto_nombre NVARCHAR(50) ,
            piloto_apellido NVARCHAR(50) ,
            piloto_nacionalidad NVARCHAR(50),
        );
		
		CREATE TABLE GRUPO_9800.BI_carrera (
            codigo_carrera INT PRIMARY KEY,
			carrera_clima varchar(100),
			numero_de_vuelta INT

        );

		CREATE TABLE GRUPO_9800.BI_tipo_neumatico (
			id_tipo_neumatico smallint PRIMARY KEY,
			descripcion nvarchar(255)
		);
		
		CREATE TABLE GRUPO_9800.BI_tipo_incidente (
            id_tipo_incidente smallint PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

		CREATE TABLE GRUPO_9800.BI_tipo_sector (
            id_tipo_sector smallint PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

		CREATE TABLE GRUPO_9800.BI_escuderia (
            cod_escuderia INT PRIMARY KEY,
            escuderia_nombre NVARCHAR(255) ,
            escuderia_nacionalidad NVARCHAR(255) 
		);

		CREATE TABLE GRUPO_9800.BI_circuito (
            circuito_codigo INT PRIMARY KEY,
            circuito_nombre NVARCHAR(255),
            id_pais smallint,
        );

		CREATE TABLE GRUPO_9800.BI_vehiculo (
            vehiculo_numero INT,
            vehiculo_modelo NVARCHAR(255),
            cod_escuderia INT ,
            cod_piloto INT ,
            PRIMARY KEY (vehiculo_numero, cod_escuderia)
        );

		 CREATE TABLE GRUPO_9800.BI_tiempo(
            cod_tiempo INT IDENTITY PRIMARY KEY,
            anio INT NOT NULL,
			cuatrimestre INT NOT NULL
        );
		
END
GO

EXEC [GRUPO_9800].CREATE_DIMENSION_TABLES
------------------------------------------------------------------------------------------
-- Procedure creacion de tablas de hechos
GO
CREATE PROCEDURE [GRUPO_9800].CREATE_BI_TABLES
AS
BEGIN
		
		CREATE TABLE GRUPO_9800.BI_fact_table_telemetria(
            circuito_codigo INT,
			cod_escuderia INT,
			vehiculo_numero INT,
			id_tipo_sector SMALLINT,
			cod_tiempo INT ,
			cod_piloto INT,
			numero_de_vuelta numeric(18,0),
			codigo_carrera INT,
			desgaste_caja_promedio DECIMAL(18,6),
			desgaste_motor_promedio NUMERIC(18,6),
			desgaste_freno_promedio DECIMAL(18,6),
			desgaste_neumatico_promedio DECIMAL(18,6),
			consumo_combustible_promedio DECIMAL(18,6),
			tiempo_de_vuelta NUMERIC(18,10),
			maxima_velocidad_alcanzada DECIMAL(18,6),
			PRIMARY KEY(circuito_codigo,cod_escuderia,vehiculo_numero,id_tipo_sector,cod_tiempo,cod_piloto,numero_de_vuelta)
			--FOREIGN KEY(circuito_codigo) REFERENCES GRUPO_9800.BI_circuito,
			--FOREIGN KEY(id_tipo_sector)  REFERENCES GRUPO_9800.BI_tipo_sector,
			--FOREIGN KEY(cod_escuderia)  REFERENCES GRUPO_9800.BI_escuderia,
			--FOREIGN KEY(cod_tiempo)  REFERENCES GRUPO_9800.BI_tiempo
			--Ver si van como FK
		)
 
        CREATE TABLE GRUPO_9800.BI_fact_table_paradas_de_box(
            cod_escuderia INT REFERENCES GRUPO_9800.BI_escuderia,
            circuito_codigo INT REFERENCES GRUPO_9800.BI_circuito,
            cod_tiempo INT REFERENCES GRUPO_9800.BI_tiempo,
			tipo_de_neumatico_cambiado SMALLINT REFERENCES GRUPO_9800.BI_tipo_neumatico,
            cantidad_de_paradas INT,
            tiempo_consumido_parada_box DECIMAL(18,2),
			PRIMARY KEY(cod_escuderia,circuito_codigo,cod_tiempo,tipo_de_neumatico_cambiado)
		);

		 CREATE TABLE GRUPO_9800.BI_fact_table_incidentes( 
			circuito_codigo INT REFERENCES GRUPO_9800.BI_circuito,
            id_tipo_sector SMALLINT REFERENCES GRUPO_9800.BI_tipo_sector,
			cod_escuderia INT REFERENCES GRUPO_9800.BI_escuderia,
			cod_tiempo INT REFERENCES GRUPO_9800.BI_tiempo,
			tipo_incidente SMALLINT REFERENCES GRUPO_9800.BI_tipo_incidente,
            incidentes_totales INT,
			PRIMARY KEY(circuito_codigo,id_tipo_sector,cod_escuderia,cod_tiempo,tipo_incidente)
		);
    
       
END
GO



-----------------------------------------------------------------------------------------------------
-- Procedures migracion de tablas

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_carrera
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_carrera
	SELECT c.codigo_carrera,carrera_clima, t.tele_auto_numero_vuelta
	FROM GRUPO_9800.carrera c
	JOIN GRUPO_9800.telemetria_auto t ON c.codigo_carrera = t.codigo_carrera
	GROUP BY c.codigo_carrera,carrera_clima,t.tele_auto_numero_vuelta
	order by c.codigo_carrera,t.tele_auto_numero_vuelta
END
GO

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
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_piloto
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_piloto
	SELECT cod_piloto,piloto_nombre,piloto_apellido,piloto_nacionalidad FROM GRUPO_9800.piloto
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


-- BI Tipo de sector
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_tipo_sector
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_tipo_sector 
	SELECT * FROM GRUPO_9800.tipo_sector
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

CREATE PROCEDURE [GRUPO_9800].CREATE_BI_TEMPORAL_TABLES
AS
BEGIN
	CREATE TABLE GRUPO_9800.BI_temp_neumaticos( 
			pk_temporal int identity,
            neumatico_nro_serie NVARCHAR(255) ,
			tipo_de_sector smallint,
			desgaste  DECIMAL(18,6),
			carrera INT,
			numero_vuelta numeric(18,0),
			ajuste_cambio_de_sector DECIMAL(18,6), 
			PRIMARY KEY(pk_temporal)
		);
	CREATE TABLE GRUPO_9800.BI_temp_frenos( 
			pk_temporal int identity,
            freno_nro_serie NVARCHAR(255) ,
			tipo_de_sector smallint,
			desgaste  DECIMAL(18,6),
			carrera INT,
			numero_vuelta numeric(18,0),
			ajuste_cambio_de_sector DECIMAL(18,6), 
			PRIMARY KEY(pk_temporal)
		);
	CREATE TABLE GRUPO_9800.BI_temp_caja( 
			pk_temporal int identity,
            caja_nro_serie NVARCHAR(255) ,
			tipo_de_sector smallint,
			desgaste  DECIMAL(18,6),
			carrera INT,
			numero_vuelta numeric(18,0),
			ajuste_cambio_de_sector DECIMAL(18,6), 
			PRIMARY KEY(pk_temporal)
		);
	CREATE TABLE GRUPO_9800.BI_temp_motor( 
			pk_temporal int identity,
            motor_nro_serie NVARCHAR(255) ,
			tipo_de_sector smallint,
			desgaste  DECIMAL(18,6),
			carrera INT,
			numero_vuelta numeric(18,0),
			ajuste_cambio_de_sector DECIMAL(18,6), 
			PRIMARY KEY(pk_temporal)
		);

	CREATE TABLE GRUPO_9800.BI_temp_combustible( 
			pk_temporal int identity,
			motor_nro_serie NVARCHAR(255),
            consumo_combustible NVARCHAR(255),
			tipo_de_sector smallint,
			carrera INT,
			consumo  DECIMAL(18,6),
			numero_vuelta numeric(18,0),
			ajuste_cambio_de_sector DECIMAL(18,6), 
			PRIMARY KEY(pk_temporal)
		);

		CREATE TABLE GRUPO_9800.BI_temp_desgaste_caja( 
			pk_temporal int identity,
			caja_nro_serie NVARCHAR(255),
			tipo_de_sector smallint,
			carrera INT,
			desgaste  DECIMAL(18,6),
			numero_vuelta numeric(18,0),
			PRIMARY KEY(pk_temporal)
		);
		CREATE TABLE GRUPO_9800.BI_temp_desgaste_motor( 
			pk_temporal int identity,
			motor_nro_serie NVARCHAR(255),
			tipo_de_sector smallint,
			carrera INT,
			desgaste  DECIMAL(18,6),
			numero_vuelta numeric(18,0),
			PRIMARY KEY(pk_temporal)
		);

	CREATE TABLE GRUPO_9800.BI_temp_desgaste_neumatico( 
			pk_temporal int identity,
			neumatico_nro_serie NVARCHAR(255),
			tipo_de_sector smallint,
			carrera INT,
			desgaste  DECIMAL(18,6),
			numero_vuelta numeric(18,0),
			PRIMARY KEY(pk_temporal)
		);
		CREATE TABLE GRUPO_9800.BI_temp_desgaste_freno( 
			pk_temporal int identity,
			freno_nro_serie NVARCHAR(255),
			tipo_de_sector smallint,
			carrera INT,
			desgaste  DECIMAL(18,6),
			numero_vuelta numeric(18,0),
			PRIMARY KEY(pk_temporal)
		);
	CREATE TABLE GRUPO_9800.BI_temp_consumo_combustible( 
			pk_temporal int identity,
			motor_nro_serie NVARCHAR(255),
			tipo_de_sector smallint,
			carrera INT,
			consumo  DECIMAL(18,6),
			numero_vuelta numeric(18,0),
			PRIMARY KEY(pk_temporal)
		);

	CREATE TABLE GRUPO_9800.BI_temp_telemetria_caja_y_motor(
			pk_temporal int identity,
			circuito_codigo INT,
			cod_escuderia INT,
			vehiculo_numero INT,
			numero_vuelta NUMERIC(18,0),
			cod_tiempo INT,
			carrera INT,
			cod_piloto INT,
			tipo_de_sector INT,
			caja_nro_serie NVARCHAR(255),
			motor_nro_serie NVARCHAR(255),
			PRIMARY KEY(pk_temporal)
	);
	CREATE TABLE GRUPO_9800.BI_temp_telemetria_neumatico(
			pk_temporal int identity,
			circuito_codigo INT,
			cod_escuderia INT,
			vehiculo_numero INT,
			numero_vuelta NUMERIC(18,0),
			cod_tiempo INT,
			carrera INT,
			cod_piloto INT,
			tipo_de_sector INT,
			neumatico_nro_serie NVARCHAR(255),
			PRIMARY KEY(pk_temporal)
	);

	CREATE TABLE GRUPO_9800.BI_temp_telemetria_freno(
			pk_temporal int identity,
			circuito_codigo INT,
			cod_escuderia INT,
			vehiculo_numero INT,
			numero_vuelta NUMERIC(18,0),
			cod_tiempo INT,
			carrera INT,
			cod_piloto INT,
			tipo_de_sector INT,
			freno_nro_serie NVARCHAR(255),
			PRIMARY KEY(pk_temporal)
	);

	CREATE TABLE GRUPO_9800.BI_temp_tiempo_de_vuelta(
			pk_temporal int identity,
			tipo_de_sector INT,
			vehiculo_numero INT,
			cod_escuderia INT,
			carrera INT,
			circuito_codigo INT,
			cod_tiempo INT,
			numero_vuelta NUMERIC(18,0),
			tiempo NUMERIC(18,10),
			ajuste_cambio_de_sector NUMERIC(18,10),
			PRIMARY KEY(pk_temporal)
	);
	CREATE TABLE GRUPO_9800.BI_temp_tiempo(
			pk_temporal int identity,
			tipo_de_sector INT,
			vehiculo_numero INT,
			cod_escuderia INT,
			carrera INT,
			cod_tiempo INT,
			circuito_codigo INT,
			numero_vuelta NUMERIC(18,0),
			tiempo NUMERIC(18,10),
			PRIMARY KEY(pk_temporal)
	);

END


GO

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_temp_tables
AS 
BEGIN

	INSERT INTO GRUPO_9800.BI_temp_neumaticos(neumatico_nro_serie, tipo_de_sector, carrera, desgaste, numero_vuelta ,ajuste_cambio_de_sector)
	SELECT [neumatico],[tipo_sector],[carrera], ( SUM([maximo] - [minimo])) [desgaste], [numero_vuelta], (SELECT ( SUM([maximo]) - SUM([minimo])) [desgaste] FROM (
																				SELECT neumatico_nro_serie[_neumatico],MAX(tele_neumatico_profundidad) [maximo], MIN (tele_neumatico_profundidad) [minimo] 
																				FROM GRUPO_9800.telemetria_neumatico
																				GROUP BY neumatico_nro_serie) as aux WHERE [neumatico] = [_neumatico] GROUP BY [_neumatico]
																				)
	FROM (
		SELECT neumatico_nro_serie[neumatico],sect.codigo_sector [sector],id_tipo_sector[tipo_sector],tt.codigo_carrera [carrera],tt.circuito_codigo,tele_auto_numero_vuelta [numero_vuelta],MAX(tele_neumatico_profundidad) [maximo], MIN (tele_neumatico_profundidad) [minimo] 
		FROM GRUPO_9800.telemetria_neumatico t
		JOIN GRUPO_9800.telemetria_auto tt ON t.tele_auto_cod = tt.tele_auto_cod 
		JOIN GRUPO_9800.sector sect ON sect.codigo_sector = tt.codigo_sector
		GROUP BY neumatico_nro_serie,sect.codigo_sector,tt.circuito_codigo,tele_auto_numero_vuelta,id_tipo_sector,tt.codigo_carrera) as aux GROUP BY [neumatico],[tipo_sector],[numero_vuelta],[carrera]

	INSERT INTO GRUPO_9800.BI_temp_frenos (freno_nro_serie ,tipo_de_sector ,carrera,desgaste ,numero_vuelta,ajuste_cambio_de_sector)
	SELECT [freno],[tipo_sector],[carrera] ,( SUM([maximo] - [minimo])) [desgaste], [numero_vuelta], (SELECT  ( SUM([maximo] -[minimo])) [desgaste] FROM (
																			SELECT freno_nro_serie [_freno],MAX(tele_freno_grosor_pastilla) [maximo], MIN (tele_freno_grosor_pastilla) [minimo] 
																			FROM GRUPO_9800.telemetria_freno
																			GROUP BY freno_nro_serie) as aux WHERE [_freno] = [freno] GROUP BY [_freno]
																			)
	FROM (
							SELECT freno_nro_serie [freno],sect.codigo_sector [sector],id_tipo_sector[tipo_sector],tt.codigo_carrera [carrera],tt.circuito_codigo,tele_auto_numero_vuelta [numero_vuelta],MAX(tele_freno_grosor_pastilla) [maximo], MIN (tele_freno_grosor_pastilla) [minimo] 
							FROM GRUPO_9800.telemetria_freno t
							JOIN GRUPO_9800.telemetria_auto tt ON t.tele_auto_cod = tt.tele_auto_cod 
							JOIN GRUPO_9800.sector sect ON sect.codigo_sector = tt.codigo_sector
							GROUP BY freno_nro_serie,sect.codigo_sector,tt.circuito_codigo,tele_auto_numero_vuelta,id_tipo_sector,tt.codigo_carrera ) as aux GROUP BY [freno],[tipo_sector],[numero_vuelta],[numero_vuelta],[carrera]

	INSERT INTO GRUPO_9800.BI_temp_caja (caja_nro_serie,tipo_de_sector ,carrera,desgaste, numero_vuelta ,ajuste_cambio_de_sector)
	SELECT [caja],[tipo_sector] ,[carrera],( SUM([maximo] - [minimo])) [desgaste], [numero_vuelta], (SELECT  ( SUM([maximo] -[minimo])) [desgaste] FROM (
																			SELECT caja_nro_serie [_caja],MAX(tele_caja_desgaste) [maximo], MIN (tele_caja_desgaste) [minimo] 
																			FROM GRUPO_9800.telemetria_caja
																			GROUP BY caja_nro_serie) as aux WHERE [_caja] = [caja] GROUP BY [_caja]
																			)
	FROM (
							SELECT caja_nro_serie [caja],sect.codigo_sector [sector],id_tipo_sector[tipo_sector],tt.codigo_carrera [carrera],tt.circuito_codigo,tele_auto_numero_vuelta [numero_vuelta],MAX(tele_caja_desgaste) [maximo], MIN (tele_caja_desgaste) [minimo] 
							FROM GRUPO_9800.telemetria_caja t
							JOIN GRUPO_9800.telemetria_auto tt ON t.tele_auto_cod = tt.tele_auto_cod 
							JOIN GRUPO_9800.sector sect ON sect.codigo_sector = tt.codigo_sector
							GROUP BY caja_nro_serie,sect.codigo_sector,tt.circuito_codigo,tele_auto_numero_vuelta,id_tipo_sector,tt.codigo_carrera ) as aux GROUP BY [caja],[tipo_sector],[numero_vuelta],[carrera]
	
	INSERT INTO GRUPO_9800.BI_temp_motor(motor_nro_serie,tipo_de_sector ,carrera,desgaste,numero_vuelta ,ajuste_cambio_de_sector)
	SELECT [motor] ,[tipo_sector],[carrera]  ,( SUM([maximo] - [minimo])) [desgaste], [numero_vuelta], (SELECT  ( SUM([maximo] -[minimo])) [desgaste] FROM (
																			SELECT motor_nro_serie [_motor],MAX(tele_motor_potencia) [maximo], MIN (tele_motor_potencia) [minimo] 
																			FROM GRUPO_9800.telemetria_motor
																			GROUP BY motor_nro_serie) as aux WHERE [_motor]= [motor] GROUP BY [_motor]
																			) [ajuste_cambio_de_sector]
	FROM (
							SELECT motor_nro_serie [motor],sect.codigo_sector [sector],id_tipo_sector[tipo_sector],tt.codigo_carrera [carrera],tt.circuito_codigo,tele_auto_numero_vuelta [numero_vuelta],MAX(tele_motor_potencia) [maximo], MIN (tele_motor_potencia) [minimo] 
							FROM GRUPO_9800.telemetria_motor t
							JOIN GRUPO_9800.telemetria_auto tt ON t.tele_auto_cod = tt.tele_auto_cod 
							JOIN GRUPO_9800.sector sect ON sect.codigo_sector = tt.codigo_sector
							GROUP BY motor_nro_serie,sect.codigo_sector,tt.circuito_codigo,tele_auto_numero_vuelta,id_tipo_sector,tt.codigo_carrera ) as aux GROUP BY [motor],[tipo_sector],[numero_vuelta],[carrera]
	
	INSERT INTO GRUPO_9800.BI_temp_combustible(motor_nro_serie,tipo_de_sector,carrera,consumo,numero_vuelta ,ajuste_cambio_de_sector)
	SELECT [motor],[tipo_sector],[carrera], ( SUM([maximo] - [minimo])) [desgaste], [numero_vuelta],(SELECT  ( SUM([maximo] -[minimo])) [desgaste] FROM (
																			SELECT motor_nro_serie [_motor],MAX(tele_auto_combustible) [maximo], MIN (tele_auto_combustible) [minimo] 
																			FROM GRUPO_9800.telemetria_motor tm
																			JOIN GRUPO_9800.telemetria_auto ta ON tm.tele_auto_cod = ta.tele_auto_cod 
																			GROUP BY motor_nro_serie) as aux WHERE [_motor]= [motor] GROUP BY [_motor]
																			)
	FROM (
							SELECT motor_nro_serie [motor],sect.codigo_sector [sector],id_tipo_sector[tipo_sector],tt.codigo_carrera [carrera],tt.circuito_codigo,tele_auto_numero_vuelta [numero_vuelta],MAX(tele_auto_combustible) [maximo], MIN (tele_auto_combustible) [minimo] 
							FROM GRUPO_9800.telemetria_motor t
							JOIN GRUPO_9800.telemetria_auto tt ON t.tele_auto_cod = tt.tele_auto_cod 
							JOIN GRUPO_9800.sector sect ON sect.codigo_sector = tt.codigo_sector
							GROUP BY motor_nro_serie,sect.codigo_sector,tt.circuito_codigo,tele_auto_numero_vuelta,id_tipo_sector,tt.codigo_carrera ) as aux GROUP BY [motor],[tipo_sector],[numero_vuelta],[carrera]
	

/*	INSERT INTO GRUPO_9800.BI_temp_tiempo_de_vuelta (circuito_codigo,cod_escuderia,vehiculo_numero,numero_vuelta,carrera,cod_tiempo,tiempo_de_vuelta)
	SELECT circuito_codigo,cod_escuderia,vehiculo_numero,tele_auto_numero_vuelta,codigo_carrera,cod_tiempo,tipo_de_sector,MAX(tele_auto_tiempo_vuelta) - MIN(tele_auto_tiempo_vuelta)
	FROM GRUPO_9800.telemetria_auto ta 
	JOIN GRUPO_9800.BI_tiempo ON YEAR(tele_fecha) = anio  AND GRUPO_9800.obtener_cuatrimestre(tele_fecha) = cuatrimestre
	where tele_auto_tiempo_vuelta <> 0
	GROUP BY circuito_codigo,cod_escuderia,vehiculo_numero,tele_auto_numero_vuelta,cod_tiempo,codigo_carrera		
	*/

	INSERT INTO  GRUPO_9800.BI_temp_tiempo_de_vuelta(tipo_de_sector,vehiculo_numero,cod_escuderia,carrera,circuito_codigo,numero_vuelta,cod_tiempo,tiempo,ajuste_cambio_de_sector)
	SELECT [tipo_sector],[vehiculo],[escuderia],[carrera],[circuito],[numero_vuelta],[codigo_tiempo],SUM([tiempo]),(SELECT MAX(tele_auto_tiempo_vuelta) 
																				FROM GRUPO_9800.telemetria_auto
																				WHERE vehiculo_numero = [vehiculo]
																				AND cod_escuderia = [escuderia]
																				AND codigo_carrera = [carrera]
																				AND circuito_codigo = [circuito]
																				AND tele_auto_numero_vuelta = [numero_vuelta]
																				GROUP BY vehiculo_numero,cod_escuderia,codigo_carrera,circuito_codigo,tele_auto_numero_vuelta)
																			
	FROM (
							SELECT sect.codigo_sector [sector],tt.vehiculo_numero[vehiculo],tt.cod_escuderia [escuderia],id_tipo_sector[tipo_sector],tt.codigo_carrera [carrera],
										GRUPO_9800.get_codigo_tiempo(tt.tele_fecha) [codigo_tiempo],tt.circuito_codigo[circuito],tele_auto_numero_vuelta [numero_vuelta],MAX(tt.tele_auto_tiempo_vuelta) [tiempo]
							FROM GRUPO_9800.telemetria_auto tt 
							JOIN GRUPO_9800.sector sect ON sect.codigo_sector = tt.codigo_sector
							GROUP BY sect.codigo_sector,tt.circuito_codigo,tele_auto_numero_vuelta,id_tipo_sector,tt.codigo_carrera,tt.vehiculo_numero,tt.cod_escuderia,GRUPO_9800.get_codigo_tiempo(tt.tele_fecha) ) as aux 
	GROUP BY [tipo_sector],[vehiculo],[escuderia],[carrera],[circuito],[numero_vuelta],[codigo_tiempo]
	order by [tipo_sector],[vehiculo],[escuderia],[carrera],[circuito],[numero_vuelta],[codigo_tiempo]

	INSERT INTO GRUPO_9800.BI_temp_desgaste_caja(caja_nro_serie,tipo_de_sector,carrera,desgaste,numero_vuelta)
	SELECT caja_nro_serie,tipo_de_sector,tc.carrera, desgaste * (ajuste_cambio_de_sector / (SELECT SUM(desgaste) FROM GRUPO_9800.BI_temp_caja WHERE caja_nro_serie = tc.caja_nro_serie)),numero_vuelta
	FROM GRUPO_9800.BI_temp_caja tc

	
																		
	INSERT INTO GRUPO_9800.BI_temp_desgaste_motor(motor_nro_serie,tipo_de_sector,carrera,desgaste,numero_vuelta)
	SELECT motor_nro_serie,tipo_de_sector,tc.carrera, desgaste * (ajuste_cambio_de_sector / (SELECT SUM(desgaste) FROM GRUPO_9800.BI_temp_motor WHERE motor_nro_serie = tc.motor_nro_serie )),numero_vuelta
	FROM GRUPO_9800.BI_temp_motor tc

	
														
	INSERT INTO GRUPO_9800.BI_temp_desgaste_freno(freno_nro_serie,tipo_de_sector,carrera,desgaste,numero_vuelta)
	SELECT freno_nro_serie,tipo_de_sector,tc.carrera, desgaste * (ajuste_cambio_de_sector / GRUPO_9800.IsZero((SELECT SUM(desgaste) FROM GRUPO_9800.BI_temp_frenos WHERE freno_nro_serie = tc.freno_nro_serie),1)),numero_vuelta
	FROM GRUPO_9800.BI_temp_frenos tc

	

	INSERT INTO GRUPO_9800.BI_temp_desgaste_neumatico(neumatico_nro_serie,tipo_de_sector,carrera,desgaste,numero_vuelta)
	SELECT neumatico_nro_serie,tipo_de_sector,tc.carrera, desgaste * (ajuste_cambio_de_sector / (SELECT SUM(desgaste) FROM GRUPO_9800.BI_temp_neumaticos WHERE neumatico_nro_serie = tc.neumatico_nro_serie )),numero_vuelta
	FROM GRUPO_9800.BI_temp_neumaticos tc


	INSERT INTO GRUPO_9800.BI_temp_consumo_combustible(motor_nro_serie,tipo_de_sector,carrera,consumo,numero_vuelta)
	SELECT motor_nro_serie,tipo_de_sector,tc.carrera, consumo * (ajuste_cambio_de_sector / (SELECT SUM(consumo) FROM GRUPO_9800.BI_temp_combustible WHERE motor_nro_serie = tc.motor_nro_serie)),numero_vuelta
	FROM GRUPO_9800.BI_temp_combustible tc

	INSERT INTO GRUPO_9800.BI_temp_tiempo(tipo_de_sector,vehiculo_numero,cod_escuderia,carrera,circuito_codigo,numero_vuelta,cod_tiempo,tiempo)
	SELECT tipo_de_sector,vehiculo_numero,cod_escuderia,carrera,circuito_codigo,numero_vuelta,cod_tiempo, tiempo * (ajuste_cambio_de_sector / GRUPO_9800.IsZero((SELECT SUM(tiempo) 
																								FROM GRUPO_9800.BI_temp_tiempo_de_vuelta 
																								WHERE vehiculo_numero = tt.vehiculo_numero
																								AND cod_escuderia = tt.cod_escuderia
																								AND carrera = tt.carrera
																								AND circuito_codigo = tt.circuito_codigo
																								AND numero_vuelta = tt.numero_vuelta
																								GROUP BY vehiculo_numero,cod_escuderia,carrera,circuito_codigo,numero_vuelta),1))
	FROM GRUPO_9800.BI_temp_tiempo_de_vuelta tt
	order by tipo_de_sector,vehiculo_numero,cod_escuderia,carrera,circuito_codigo,numero_vuelta


	INSERT INTO GRUPO_9800.BI_temp_telemetria_caja_y_motor
	(circuito_codigo ,cod_escuderia ,vehiculo_numero ,numero_vuelta,carrera,cod_tiempo ,cod_piloto ,tipo_de_sector ,caja_nro_serie,motor_nro_serie)
	SELECT tele_a.circuito_codigo, tele_a.cod_escuderia, tele_a.vehiculo_numero,tele_a.tele_auto_numero_vuelta,tele_a.codigo_carrera,GRUPO_9800.get_codigo_tiempo(tele_a.tele_fecha),p.cod_piloto,s.id_tipo_sector,
	tele_c.caja_nro_serie,tele_m.motor_nro_serie
	FROM GRUPO_9800.telemetria_auto tele_a 
	JOIN GRUPO_9800.telemetria_caja tele_c ON tele_a.tele_auto_cod = tele_c.tele_auto_cod
	JOIN GRUPO_9800.telemetria_motor tele_m ON tele_a.tele_auto_cod = tele_m.tele_auto_cod
	JOIN GRUPO_9800.sector s ON tele_a.codigo_sector = s.codigo_sector
	JOIN GRUPO_9800.vehiculo v ON v.vehiculo_numero = tele_a.vehiculo_numero AND v.cod_escuderia = tele_a.cod_escuderia
	JOIN GRUPO_9800.piloto p ON v.cod_piloto = p.cod_piloto 
	GROUP BY tele_a.circuito_codigo, tele_a.cod_escuderia, tele_a.vehiculo_numero,tele_a.tele_auto_numero_vuelta,GRUPO_9800.get_codigo_tiempo(tele_a.tele_fecha),
	tele_c.caja_nro_serie,tele_m.motor_nro_serie,s.id_tipo_sector,p.cod_piloto,tele_a.codigo_carrera

	INSERT INTO GRUPO_9800.BI_temp_telemetria_neumatico
	(circuito_codigo ,cod_escuderia ,vehiculo_numero ,numero_vuelta,carrera,cod_tiempo ,cod_piloto ,tipo_de_sector ,neumatico_nro_serie)
	SELECT tele_a.circuito_codigo, tele_a.cod_escuderia, tele_a.vehiculo_numero,tele_a.tele_auto_numero_vuelta,tele_a.codigo_carrera,GRUPO_9800.get_codigo_tiempo(tele_a.tele_fecha),p.cod_piloto,s.id_tipo_sector,
	tele_n.neumatico_nro_serie
	FROM GRUPO_9800.telemetria_auto tele_a 
	JOIN GRUPO_9800.telemetria_neumatico tele_n ON tele_a.tele_auto_cod = tele_n.tele_auto_cod
	JOIN GRUPO_9800.sector s ON tele_a.codigo_sector = s.codigo_sector
	JOIN GRUPO_9800.vehiculo v ON v.vehiculo_numero = tele_a.vehiculo_numero AND v.cod_escuderia = tele_a.cod_escuderia
	JOIN GRUPO_9800.piloto p ON v.cod_piloto = p.cod_piloto 
	GROUP BY tele_a.circuito_codigo, tele_a.cod_escuderia, tele_a.vehiculo_numero,tele_a.tele_auto_numero_vuelta,GRUPO_9800.get_codigo_tiempo(tele_a.tele_fecha),
	tele_n.neumatico_nro_serie,s.id_tipo_sector,p.cod_piloto,tele_a.codigo_carrera

	INSERT INTO GRUPO_9800.BI_temp_telemetria_freno
	(circuito_codigo ,cod_escuderia ,vehiculo_numero ,numero_vuelta,carrera,cod_tiempo ,cod_piloto ,tipo_de_sector ,freno_nro_serie)
	SELECT tele_a.circuito_codigo, tele_a.cod_escuderia, tele_a.vehiculo_numero,tele_a.tele_auto_numero_vuelta,tele_a.codigo_carrera,GRUPO_9800.get_codigo_tiempo(tele_a.tele_fecha),p.cod_piloto,s.id_tipo_sector,
	tele_f.freno_nro_serie
	FROM GRUPO_9800.telemetria_auto tele_a 
	JOIN GRUPO_9800.telemetria_freno tele_f ON tele_a.tele_auto_cod = tele_f.tele_auto_cod
	JOIN GRUPO_9800.sector s ON tele_a.codigo_sector = s.codigo_sector
	JOIN GRUPO_9800.vehiculo v ON v.vehiculo_numero = tele_a.vehiculo_numero AND v.cod_escuderia = tele_a.cod_escuderia
	JOIN GRUPO_9800.piloto p ON v.cod_piloto = p.cod_piloto 
	GROUP BY tele_a.circuito_codigo, tele_a.cod_escuderia, tele_a.vehiculo_numero,tele_a.tele_auto_numero_vuelta,GRUPO_9800.get_codigo_tiempo(tele_a.tele_fecha),
	tele_f.freno_nro_serie,s.id_tipo_sector,p.cod_piloto,tele_a.codigo_carrera
END

GO 
CREATE PROCEDURE [GRUPO_9800].DROP_BI_TEMP_TABLES
AS
BEGIN
	
	DROP TABLE GRUPO_9800.BI_temp_neumaticos
	DROP TABLE GRUPO_9800.BI_temp_frenos
	DROP TABLE GRUPO_9800.BI_temp_caja
	DROP TABLE GRUPO_9800.BI_temp_motor
	DROP TABLE GRUPO_9800.BI_temp_combustible
	DROP TABLE GRUPO_9800.BI_temp_desgaste_caja
	DROP TABLE GRUPO_9800.BI_temp_desgaste_motor
	DROP TABLE GRUPO_9800.BI_temp_desgaste_freno
	DROP TABLE GRUPO_9800.BI_temp_desgaste_neumatico
	DROP TABLE GRUPO_9800.BI_temp_consumo_combustible
	DROP TABLE GRUPO_9800.BI_temp_telemetria_caja_y_motor
	DROP TABLE GRUPO_9800.BI_temp_telemetria_neumatico
	DROP TABLE GRUPO_9800.BI_temp_telemetria_freno
	DROP TABLE GRUPO_9800.BI_temp_tiempo_de_vuelta
	DROP TABLE GRUPO_9800.BI_temp_tiempo
END
/*MIGRACIÓN*/

-- Migracion fact table desgaste
GO

CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_telemetria
AS
BEGIN

	
	INSERT INTO GRUPO_9800.BI_fact_table_telemetria (circuito_codigo,cod_escuderia,vehiculo_numero,id_tipo_sector,cod_tiempo,cod_piloto,numero_de_vuelta,codigo_carrera,
											desgaste_caja_promedio,desgaste_motor_promedio,desgaste_neumatico_promedio,desgaste_freno_promedio,
											consumo_combustible_promedio,tiempo_de_vuelta,maxima_velocidad_alcanzada)
	SELECT tele.circuito_codigo,
			tele.cod_escuderia,
			tele.vehiculo_numero,
			s.id_tipo_sector,
			t.cod_tiempo,
			p.cod_piloto,
			tele.tele_auto_numero_vuelta,
			tele.codigo_carrera,
				(
					SELECT temp_c.desgaste FROM GRUPO_9800.BI_temp_desgaste_caja temp_c
					JOIN GRUPO_9800.BI_temp_telemetria_caja_y_motor temp_t ON temp_c.caja_nro_serie = temp_t.caja_nro_serie AND temp_t.tipo_de_sector = temp_c.tipo_de_sector AND temp_c.numero_vuelta = temp_t.numero_vuelta AND temp_c.carrera = temp_t.carrera
					WHERE temp_c.caja_nro_serie = temp_t.caja_nro_serie 
					AND tele.vehiculo_numero = temp_t.vehiculo_numero
					AND tele.cod_escuderia = temp_t.cod_escuderia
					AND tele.circuito_codigo = temp_t.circuito_codigo
					AND s.id_tipo_sector = temp_t.tipo_de_sector
					AND p.cod_piloto = temp_t.cod_piloto
					AND t.cod_tiempo = temp_t.cod_tiempo
					AND tele.tele_auto_numero_vuelta = temp_t.numero_vuelta
					AND tele.codigo_carrera = temp_t.carrera
					GROUP BY temp_t.vehiculo_numero,temp_t.cod_escuderia,temp_t.circuito_codigo,temp_t.cod_tiempo,temp_t.numero_vuelta,temp_t.tipo_de_sector,temp_t.cod_piloto,temp_c.desgaste,temp_c.carrera
				),
				(
					SELECT temp_m.desgaste FROM GRUPO_9800.BI_temp_desgaste_motor temp_m
					JOIN GRUPO_9800.BI_temp_telemetria_caja_y_motor temp_t ON temp_t.motor_nro_serie = temp_m.motor_nro_serie AND temp_t.tipo_de_sector = temp_m.tipo_de_sector AND temp_m.numero_vuelta = temp_t.numero_vuelta AND temp_m.carrera = temp_t.carrera
					WHERE tele.vehiculo_numero = temp_t.vehiculo_numero
					AND tele.cod_escuderia = temp_t.cod_escuderia
					AND tele.circuito_codigo = temp_t.circuito_codigo
					AND s.id_tipo_sector = temp_t.tipo_de_sector
					AND p.cod_piloto = temp_t.cod_piloto
					AND t.cod_tiempo = temp_t.cod_tiempo
					AND tele.tele_auto_numero_vuelta = temp_t.numero_vuelta
					AND tele.codigo_carrera = temp_t.carrera
					GROUP BY temp_t.vehiculo_numero,temp_t.cod_escuderia,temp_t.circuito_codigo,temp_t.cod_tiempo,temp_t.numero_vuelta,temp_t.tipo_de_sector,temp_t.cod_piloto,temp_m.desgaste,temp_m.carrera
				),
				(
					SELECT AVG(temp_n.desgaste) FROM GRUPO_9800.BI_temp_desgaste_neumatico temp_n
					JOIN GRUPO_9800.BI_temp_telemetria_neumatico temp_t ON temp_t.neumatico_nro_serie = temp_n.neumatico_nro_serie   AND temp_t.tipo_de_sector = temp_n.tipo_de_sector AND temp_n.numero_vuelta = temp_t.numero_vuelta AND temp_n.carrera = temp_t.carrera
					WHERE tele.vehiculo_numero = temp_t.vehiculo_numero
					AND tele.cod_escuderia = temp_t.cod_escuderia
					AND tele.circuito_codigo = temp_t.circuito_codigo
					AND s.id_tipo_sector = temp_t.tipo_de_sector
					AND p.cod_piloto = temp_t.cod_piloto
					AND t.cod_tiempo = temp_t.cod_tiempo
					AND tele.tele_auto_numero_vuelta = temp_t.numero_vuelta
					AND tele.codigo_carrera = temp_n.carrera
					GROUP BY temp_t.vehiculo_numero,temp_t.cod_escuderia,temp_t.circuito_codigo,temp_t.cod_tiempo,temp_t.numero_vuelta,temp_t.tipo_de_sector,temp_t.cod_piloto,temp_t.carrera
				),
				(
					SELECT AVG(temp_f.desgaste) FROM GRUPO_9800.BI_temp_desgaste_freno temp_f
					JOIN GRUPO_9800.BI_temp_telemetria_freno temp_t ON temp_t.freno_nro_serie = temp_f.freno_nro_serie  AND temp_t.tipo_de_sector = temp_f.tipo_de_sector AND temp_f.numero_vuelta = temp_t.numero_vuelta AND temp_f.carrera = temp_t.carrera
					WHERE tele.vehiculo_numero = temp_t.vehiculo_numero
					AND tele.cod_escuderia = temp_t.cod_escuderia
					AND tele.circuito_codigo = temp_t.circuito_codigo
					AND s.id_tipo_sector = temp_t.tipo_de_sector
					AND p.cod_piloto = temp_t.cod_piloto
					AND t.cod_tiempo = temp_t.cod_tiempo
					AND tele.tele_auto_numero_vuelta = temp_t.numero_vuelta
					AND tele.codigo_carrera = temp_f.carrera
					GROUP BY temp_t.vehiculo_numero,temp_t.cod_escuderia,temp_t.circuito_codigo,temp_t.cod_tiempo,temp_t.numero_vuelta,temp_t.tipo_de_sector,temp_t.cod_piloto,temp_f.carrera
				),
					(
					SELECT temp_c.consumo FROM GRUPO_9800.BI_temp_consumo_combustible temp_c
					JOIN GRUPO_9800.BI_temp_telemetria_caja_y_motor temp_t ON temp_t.motor_nro_serie= temp_c.motor_nro_serie  AND temp_t.tipo_de_sector = temp_c.tipo_de_sector AND temp_c.numero_vuelta = temp_t.numero_vuelta AND temp_c.carrera = temp_t.carrera
					WHERE tele.vehiculo_numero = temp_t.vehiculo_numero
					AND tele.cod_escuderia = temp_t.cod_escuderia
					AND tele.circuito_codigo = temp_t.circuito_codigo
					AND s.id_tipo_sector = temp_t.tipo_de_sector
					AND p.cod_piloto = temp_t.cod_piloto
					AND t.cod_tiempo = temp_t.cod_tiempo
					AND tele.tele_auto_numero_vuelta = temp_t.numero_vuelta
					AND tele.codigo_carrera = temp_t.carrera
					GROUP BY temp_t.vehiculo_numero,temp_t.cod_escuderia,temp_t.circuito_codigo,temp_t.cod_tiempo,temp_t.numero_vuelta,temp_t.tipo_de_sector,temp_t.cod_piloto,temp_c.consumo,temp_t.carrera
					) 'Combustible utilizado',
					(SELECT temp_t.tiempo FROM GRUPO_9800.BI_temp_tiempo temp_t
			WHERE tele.cod_escuderia =  temp_t.cod_escuderia
			AND tele.circuito_codigo = temp_t.circuito_codigo
			AND tele.vehiculo_numero = temp_t.vehiculo_numero
			AND t.cod_tiempo = temp_t.cod_tiempo
			AND tele.tele_auto_numero_vuelta =  temp_t.numero_vuelta
			AND s.id_tipo_sector = temp_t.tipo_de_sector
			AND tele.codigo_carrera = temp_t.carrera
			GROUP BY temp_t.cod_escuderia,temp_t.circuito_codigo,temp_t.vehiculo_numero,temp_t.cod_tiempo,temp_t.numero_vuelta,temp_t.tipo_de_sector, temp_t.carrera,temp_t.tiempo) 'Tiempo consumido por sector',
	MAX(tele.tele_auto_velocidad) 'Velocidad maxima'
	FROM GRUPO_9800.telemetria_auto tele
	JOIN GRUPO_9800.sector s ON tele.codigo_sector = s.codigo_sector 
	JOIN GRUPO_9800.BI_vehiculo v ON tele.vehiculo_numero = v.vehiculo_numero AND tele.cod_escuderia = v.cod_escuderia
	JOIN GRUPO_9800.BI_piloto p ON v.cod_piloto = p.cod_piloto
	JOIN GRUPO_9800.BI_tiempo t ON YEAR(tele.tele_fecha) = t.anio  AND GRUPO_9800.obtener_cuatrimestre(tele.tele_fecha) = t.cuatrimestre
	GROUP BY tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo,p.cod_piloto,tele.tele_auto_numero_vuelta,tele.codigo_carrera


END
GO

-- Migracion fact table paradas de box
go
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_paradas_de_box --LISTO
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_fact_table_paradas_de_box (cod_escuderia,circuito_codigo,cod_tiempo,tipo_de_neumatico_cambiado,cantidad_de_paradas,tiempo_consumido_parada_box) 
	SELECT pbv.cod_escuderia, 
	ca.circuito_codigo,
	t.cod_tiempo,
	n.id_tipo_neumatico,
	COUNT(DISTINCT pb.cod_parada_box) 'Cantidad de paradas de box',
	SUM(pb.parada_box_tiempo/ 4) 'Tiempo consumido en parada de box'
	FROM GRUPO_9800.parada_box pb 
    JOIN GRUPO_9800.parada_box_por_vehiculo pbv ON pbv.cod_parada_box = pb.cod_parada_box
	JOIN GRUPO_9800.neumatico n ON n.neumatico_nro_serie = pbv.nro_serie_neumatico_viejo
	JOIN GRUPO_9800.carrera ca ON (pb.codigo_carrera = ca.codigo_carrera)
	JOIN GRUPO_9800.BI_tiempo t ON YEAR(ca.carrera_fecha) = t.anio AND GRUPO_9800.obtener_cuatrimestre(ca.carrera_fecha) = t.cuatrimestre
	GROUP BY cod_escuderia,ca.circuito_codigo,t.cod_tiempo,n.id_tipo_neumatico

END


-- Migracion fact table incidentes
GO
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_incidentes
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_fact_table_incidentes (circuito_codigo,id_tipo_sector,cod_escuderia,cod_tiempo,tipo_incidente,incidentes_totales)
    SELECT i.circuito_codigo,
	ts.id_tipo_sector,
	e.cod_escuderia,
	t.cod_tiempo,
	ti.id_tipo_incidente,
	COUNT(ia.cod_incidente) 'Incidentes totales'
	FROM GRUPO_9800.BI_circuito c
	JOIN GRUPO_9800.incidente i ON c.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.incidente_por_auto ia ON i.cod_incidente = ia.cod_incidente
	JOIN GRUPO_9800.BI_tipo_incidente ti ON ti.id_tipo_incidente = ia.id_tipo_incidente
	JOIN GRUPO_9800.BI_escuderia e ON e.cod_escuderia = ia.cod_escuderia 
	JOIN GRUPO_9800.sector s ON s.codigo_sector = i.codigo_sector AND s.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_tipo_sector ts ON s.id_tipo_sector = ts.id_tipo_sector 
	JOIN GRUPO_9800.carrera ca ON i.codigo_carrera = ca.codigo_carrera
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(ca.carrera_fecha) = t.anio AND GRUPO_9800.obtener_cuatrimestre(ca.carrera_fecha) = t.cuatrimestre
    GROUP BY i.circuito_codigo,ts.id_tipo_sector,e.cod_escuderia,t.cod_tiempo,ti.id_tipo_incidente
END
GO

-- Creacion de funciones 

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

CREATE FUNCTION GRUPO_9800.IsZero (
	@Number FLOAT,
	@IsZeroNumber FLOAT
)
RETURNS FLOAT
AS
BEGIN

	IF (@Number = 0)
	BEGIN
		SET @Number = @IsZeroNumber
	END

	RETURN (@Number)

END
GO
CREATE FUNCTION GRUPO_9800.obtener_anio(@codigo_tiempo int)
RETURNS INT
AS 
BEGIN
	
	DECLARE @ANIO INT
	
	SET @ANIO = (SELECT anio FROM GRUPO_9800.BI_tiempo WHERE cod_tiempo = @codigo_tiempo)
	
	RETURN @ANIO
END  



GO
CREATE FUNCTION GRUPO_9800.get_codigo_tiempo (@Date smalldatetime )
RETURNS INT
AS 
BEGIN
	
	DECLARE @CODIGO INT
	SET @CODIGO = (SELECT t.cod_tiempo FROM GRUPO_9800.BI_tiempo t WHERE YEAR(@Date) = t.anio AND GRUPO_9800.obtener_cuatrimestre(@Date) = t.cuatrimestre) 
	RETURN @CODIGO
END  

GO
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_tiempo
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

-- Ejecuto procedures de tabla de hechos y tablas BI
EXEC [GRUPO_9800].CREATE_BI_TABLES
EXEC [GRUPO_9800].MIGRAR_BI_tipo_sector
EXEC [GRUPO_9800].MIGRAR_BI_circuito
EXEC [GRUPO_9800].MIGRAR_BI_escuderia
EXEC [GRUPO_9800].MIGRAR_BI_vehiculo
EXEC [GRUPO_9800].MIGRAR_BI_tipo_incidente
EXEC [GRUPO_9800].MIGRAR_BI_tipo_neumatico
EXEC [GRUPO_9800].MIGRAR_BI_piloto
EXEC [GRUPO_9800].MIGRAR_BI_tiempo
EXEC [GRUPO_9800].CREATE_BI_TEMPORAL_TABLES
EXEC [GRUPO_9800].MIGRAR_BI_temp_tables
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_telemetria
EXEC [GRUPO_9800].DROP_BI_temp_tables
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_paradas_de_box
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_incidentes



-----------------------------------------------------------------------------------------------------------------------


/*
Los 3 circuitos más peligrosos del año, en función mayor cantidad de 
incidentes  
*/

-- OK

GO--REVISAR 
CREATE VIEW GRUPO_9800.top3CircuitosMasPeligrosos
AS

	SELECT groups.codigo,groups.anio,groups.[incidentes_por_anio] FROM (
	SELECT circuito_codigo [codigo], t.anio [anio], SUM(incidentes_totales) [incidentes_por_anio]
		  ,ROW_NUMBER() OVER (
						 PARTITION BY t.anio
						 ORDER BY SUM(incidentes_totales) DESC
         		   ) AS [ROW NUMBER]
	  FROM GRUPO_9800.BI_fact_table_incidentes ft
		JOIN GRUPO_9800.BI_tiempo t ON t.cod_tiempo = ft.cod_tiempo
		GROUP BY circuito_codigo,t.anio
	  ) groups
	WHERE groups.[ROW NUMBER] <=3
	
GO

-- OK 
CREATE VIEW GRUPO_9800.promedioIncidentesPorEscuderiaXanio
AS
	SELECT cod_escuderia,t.anio,id_tipo_sector,AVG(incidentes_totales) 'Promedio de incidentes'
	FROM GRUPO_9800.BI_fact_table_incidentes ft
	JOIN GRUPO_9800.BI_tiempo t ON t.cod_tiempo = ft.cod_tiempo  
	GROUP BY cod_escuderia,t.anio,id_tipo_sector

GO

/*
Cantidad de paradas por circuito por escudería por año.
*/

CREATE VIEW GRUPO_9800.paradasPorCircuito
AS
	SELECT circuito_codigo,cod_escuderia,t.anio,SUM(cantidad_de_paradas) 'Cantidad de paradas'
	FROM GRUPO_9800.BI_fact_table_paradas_de_box ft 
	JOIN GRUPO_9800.BI_tiempo t ON ft.cod_tiempo = t.cod_tiempo
	GROUP BY circuito_codigo,cod_escuderia,t.anio

/*
Tiempo promedio que tardó cada escudería en las paradas por cuatrimestre.
*/
GO
CREATE VIEW GRUPO_9800.tiempoPromedioPorCuatrimestre
AS
	SELECT cod_escuderia,cod_tiempo,SUM(p.tiempo_consumido_parada_box)/SUM(cantidad_de_paradas) 'Tiempo promedio en paradas de box'
	FROM GRUPO_9800.BI_fact_table_paradas_de_box p
	GROUP BY p.cod_escuderia,cod_tiempo


GO
CREATE VIEW GRUPO_9800.top3MayorTiempoEnBoxes
AS
	SELECT TOP 3 circuito_codigo,SUM(tiempo_consumido_parada_box) 'Tiempo consumido por circuito'
	FROM GRUPO_9800.BI_fact_table_paradas_de_box
	GROUP BY circuito_codigo
	ORDER BY 2 DESC

/*
SELECT * FROM GRUPO_9800.tiempoPromedioPorCuatrimestre
SELECT * FROM GRUPO_9800.top3CircuitosMasPeligrosos
SELECT * FROM GRUPO_9800.paradasPorCircuito
SELECT * FROM GRUPO_9800.promedioIncidentesPorEscuderiaXanio
SELECT * FROM GRUPO_9800.top3MayorTiempoEnBoxes
SELECT * FROM GRUPO_9800.maximaVelocidadPorAutoPorSector
SELECT * FROM GRUPO_9800.top3CircuitosMayorConsumoDeCombustible
SELECT * FROM GRUPO_9800.mejorTiempoDeVuelta
*/

--Máxima velocidad alcanzada por cada auto en cada tipo de sector de cada 
--circuito.

-- OK
GO
CREATE VIEW GRUPO_9800.maximaVelocidadPorAutoPorSector
AS
	SELECT  vehiculo_numero,cod_escuderia, id_tipo_sector, circuito_codigo, MAX(maxima_velocidad_alcanzada) 'Maxim velocidad alcanzada'
	FROM GRUPO_9800.BI_fact_table_telemetria
	GROUP BY vehiculo_numero,cod_escuderia,id_tipo_sector,circuito_codigo

-- Los 3 de circuitos con mayor consumo de combustible promedio

 -- OK

GO
CREATE VIEW GRUPO_9800.top3CircuitosMayorConsumoDeCombustible
AS
	SELECT TOP 3 circuito_codigo,SUM(consumo_combustible_promedio)/(COUNT(DISTINCT (CONCAT(vehiculo_numero,'-',cod_escuderia,'-', codigo_carrera)))) 'Consumo combustible promedio'
	FROM GRUPO_9800.BI_fact_table_telemetria
	where consumo_combustible_promedio <> 0
	GROUP BY circuito_codigo
	ORDER BY 2 desc

-- Mejor tiempo de vuelta de cada escudería por circuito por año. 
-- El mejor tiempo está dado por el mínimo tiempo en que un auto logra 
-- realizar una vuelta de un circuito.

-- OK

GO
CREATE VIEW GRUPO_9800.mejorTiempoDeVuelta
AS
	SELECT groups.escuderia,groups.circuito,groups.anio, MIN([tiempo_de_vuelta]) 'Minimo tiempo de vuelta'FROM (
	SELECT cod_escuderia [escuderia], circuito_codigo [circuito], t.anio [anio], SUM(tiempo_de_vuelta) [tiempo_de_vuelta]
		  ,ROW_NUMBER() OVER (
						 PARTITION BY ft.circuito_codigo,ft.cod_escuderia,ft.vehiculo_numero,t.anio,ft.cod_piloto,ft.codigo_carrera,ft.numero_de_vuelta 
						 ORDER BY SUM(tiempo_de_vuelta) DESC
         		   ) AS [ROW NUMBER]
	  FROM GRUPO_9800.BI_fact_table_telemetria ft
		JOIN GRUPO_9800.BI_tiempo t ON t.cod_tiempo = ft.cod_tiempo
		GROUP BY  ft.circuito_codigo,ft.cod_escuderia,ft.vehiculo_numero,t.anio,ft.cod_piloto,ft.codigo_carrera,ft.numero_de_vuelta 
	  ) groups
	WHERE groups.[ROW NUMBER] <=1
	AND [tiempo_de_vuelta] != 0
	GROUP BY groups.escuderia,groups.circuito,groups.anio



--Hay que ver porque los tipos de sector del 1 y el 2 me dan lo mismo


--Desgaste promedio de cada componente de cada auto por vuelta por 
--circuito. 
--Tener en cuenta que, para el cálculo del desgaste de los neumáticos, se 
--toma la diferencia de mm del mismo entre la medición inicial y final de 
--cada vuelta. Lo mismo aplica para el desgaste de frenos. 
--Para el cálculo del desgaste del motor se toma en cuenta la perdida de 
--potencia. 

GO
CREATE VIEW GRUPO_9800.desgasteDeComponentePorVuelta
AS

SELECT vehiculo_numero,cod_escuderia,circuito_codigo,
SUM(desgaste_caja_promedio)/ COUNT(distinct numero_de_vuelta) 'Desgaste promedio de la caja por vuelta',
SUM(desgaste_motor_promedio)/ COUNT(distinct numero_de_vuelta)'Desgaste promedio del motor por vuelta',
SUM(desgaste_neumatico_promedio)/ COUNT(distinct numero_de_vuelta)  'Desgaste promedio del neumatico por vuelta',
SUM(desgaste_freno_promedio)/ COUNT(distinct numero_de_vuelta)  'Desgaste promedio del freno por vuelta' 
FROM GRUPO_9800.BI_fact_table_telemetria
GROUP BY vehiculo_numero,cod_escuderia,circuito_codigo

GO

