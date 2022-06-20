USE [GD1C2022]
GO


/*
CREATE PROC DROP_ALL
AS
BEGIN 
	DROP PROC [GRUPO_9800].CREATE_MASTER_TABLES
	DROP PROC [GRUPO_9800].CREATE_TRANSACTIONAL_TABLES
	DROP PROC [GRUPO_9800].migrar_Caja
	DROP PROC [GRUPO_9800].migrar_Motor
	DROP PROC [GRUPO_9800].migrar_Freno
	DROP PROC [GRUPO_9800].migrar_Tipo_neumatico
	DROP PROC [GRUPO_9800].migrar_Tipo_Sector
	DROP PROC [GRUPO_9800].migrar_Tipo_incidente
	DROP PROC [GRUPO_9800].migrar_Pais 
	DROP PROC [GRUPO_9800].migrar_Bandera
	DROP PROC [GRUPO_9800].migrar_Escuderia
	DROP PROC [GRUPO_9800].migrar_Piloto
	DROP PROC [GRUPO_9800].migrar_Carrera
	DROP PROC [GRUPO_9800].migrar_Sector
	DROP PROC [GRUPO_9800].migrar_Parada_box
	DROP PROC [GRUPO_9800].migrar_Telemetria_caja
	DROP PROC [GRUPO_9800].migrar_Telemetria_motor
	DROP PROC [GRUPO_9800].migrar_Telemetria_neumatico
	DROP PROC [GRUPO_9800].migrar_Telemetria_freno
	DROP PROC [GRUPO_9800].migrar_Telemetria_auto
	DROP PROC [GRUPO_9800].migrar_circuito
	DROP PROC [GRUPO_9800].migrar_incidente
	DROP PROC [GRUPO_9800].migrar_Incidente_por_auto
	DROP PROC [GRUPO_9800].migrar_Vehiculo
	DROP PROC [GRUPO_9800].migrar_parada_box_por_vehiculo
	DROP PROC [GRUPO_9800].migrar_neumatico
	DROP TABLE GRUPO_9800.incidente_por_auto;
	DROP TABLE GRUPO_9800.incidente;
	DROP TABLE GRUPO_9800.telemetria_neumatico;
	DROP TABLE GRUPO_9800.telemetria_freno;
	DROP TABLE GRUPO_9800.telemetria_motor;
	DROP TABLE GRUPO_9800.telemetria_caja;
	DROP TABLE GRUPO_9800.telemetria_auto;
	DROP TABLE GRUPO_9800.parada_box_por_vehiculo;
	DROP TABLE GRUPO_9800.parada_box;
	DROP TABLE GRUPO_9800.sector;
	DROP TABLE GRUPO_9800.carrera;
	DROP TABLE GRUPO_9800.circuito;
	DROP TABLE GRUPO_9800.vehiculo;
	DROP TABLE GRUPO_9800.neumatico;
	DROP TABLE GRUPO_9800.freno;
	DROP TABLE GRUPO_9800.motor;
	DROP TABLE GRUPO_9800.caja;
	DROP TABLE GRUPO_9800.bandera;
	DROP TABLE GRUPO_9800.pais;
	DROP TABLE GRUPO_9800.tipo_neumatico;
	DROP TABLE GRUPO_9800.tipo_sector;
	DROP TABLE GRUPO_9800.tipo_incidente;
	DROP TABLE GRUPO_9800.piloto;
	DROP TABLE GRUPO_9800.escuderia;
	
	
	drop schema GRUPO_9800

END

DROP PROC DROP_ALL

EXEC DROP_ALL
*/
/*
CREATE PROCEDURE MIGRAR_CAJA
AS
BEGIN 
	PRINT 'HOLA'
END */
-- Caja 
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_caja

GO

-- Motor
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_motor
GO

-- Freno
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_freno
GO

-- Tipo neumatico
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_tipo_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_tipo_neumatico
GO

-- Tipo Sector
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_tipo_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_tipo_sector
GO

-- Tipo incidente
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_tipo_incidente' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_tipo_incidente
GO

-- Pais 
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_pais' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_pais
GO

-- Bandera
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_bandera' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_bandera
GO
 
--Escuderia
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_escuderia' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_escuderia
GO

-- Piloto
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_piloto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_piloto
GO


-- Circuito
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_circuito' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_circuito
GO


-- Carrera
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_carrera' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_carrera
GO


-- Sector
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_sector
GO

-- Parada box
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_parada_box' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_parada_box
GO


-- Telemetria caja
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_telemetria_caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_telemetria_caja
GO


-- Telemetria motor
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_telemetria_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_telemetria_motor
GO



--Telemetria neumatico
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_telemetria_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_telemetria_neumatico
GO


--Telemetria freno
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_telemetria_freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_telemetria_freno

GO

--Telemetria auto
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_telemetria_auto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_telemetria_auto
GO



-- Incidente
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_incidente' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_incidente
GO



-- Incidente por auto
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_incidente_por_auto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_incidente_por_auto
GO



-- Vehiculo
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_vehiculo
GO

-- Neumatico
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_neumatico
GO

--Parada box por vehiculo
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'migrar_parada_box_por_vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.migrar_parada_box_por_vehiculo
GO


--incidente_por_auto
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'incidente_por_auto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.incidente_por_auto
GO

--incidente
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'incidente' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.incidente
GO

--telemetria_neumatico
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'telemetria_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.telemetria_neumatico
GO

--telemetria_freno
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'telemetria_freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.telemetria_freno
GO

--telemetria_motor
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'telemetria_motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.telemetria_motor
GO

--telemetria_caja
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'telemetria_caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.telemetria_caja
GO

--telemetria_auto
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'telemetria_auto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.telemetria_auto
GO

--parada_box_por_vehiculo
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'parada_box_por_vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.parada_box_por_vehiculo
GO

--parada_box
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'parada_box' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.parada_box
GO

--sector
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.sector
GO

--carrera
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'carrera' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.carrera
GO

--circuito
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'circuito' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.circuito
GO

--vehiculo
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'vehiculo' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.vehiculo
GO

--neumatico
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.neumatico
GO

--freno
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'freno' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.freno
GO

--motor
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'motor' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.motor
GO

--caja
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'caja' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.caja
GO

--bandera
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'bandera' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.bandera
GO

--pais
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'pais' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.pais
GO

--tipo_neumatico
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'tipo_neumatico' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.tipo_neumatico
GO

--tipo_sector
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'tipo_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.tipo_sector
GO

--tipo_incidente
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'tipo_incidente' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.tipo_incidente
GO

--piloto
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'piloto' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.piloto
GO

--escuderia
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'escuderia' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.escuderia
GO



IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_MASTER_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.CREATE_MASTER_TABLES
GO


IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_TRANSACTIONAL_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.CREATE_TRANSACTIONAL_TABLES
GO

IF EXISTS (SELECT * FROM SYS.schemas WHERE NAME = 'GRUPO_9800')
	DROP SCHEMA GRUPO_9800
GO


CREATE SCHEMA GRUPO_9800

GO
CREATE PROCEDURE [GRUPO_9800].CREATE_MASTER_TABLES
AS
BEGIN
    -- ESCUDERIA
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].escuderia')
		CREATE TABLE GRUPO_9800.escuderia (
            cod_escuderia INT IDENTITY PRIMARY KEY,
            escuderia_nombre NVARCHAR(255) ,
            escuderia_nacionalidad NVARCHAR(255) 
    );

    -- PILOTO
   IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].piloto')
		CREATE TABLE GRUPO_9800.piloto (
            cod_piloto INT  IDENTITY PRIMARY KEY,
            piloto_nombre NVARCHAR(50) ,
            piloto_apellido NVARCHAR(50) ,
            piloto_nacionalidad NVARCHAR(50) ,
            piloto_fecha_nacimiento DATETIME 
        );


    -- TIPO INCIDENTE
   IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].tipo_incidente')
        CREATE TABLE GRUPO_9800.tipo_incidente (
            id_tipo_incidente SMALLINT  IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

    -- TIPO_SECTOR
   IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].tipo_sector')
        CREATE TABLE GRUPO_9800.tipo_sector (
            id_tipo_sector smallint IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

    -- TIPO NEUMATICO
   IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].tipo_neumatico')
        CREATE TABLE GRUPO_9800.tipo_neumatico (
            id_tipo_neumatico smallint IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255)
        );

    --- PAIS
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].pais')
        CREATE TABLE GRUPO_9800.pais (
            id_pais smallint  IDENTITY PRIMARY KEY,
            nombre NVARCHAR(50) 
        );
    
    -- BANDERA
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].bandera')
        CREATE TABLE GRUPO_9800.bandera (
            id_incidente_bandera INT IDENTITY  PRIMARY KEY,
            incidente_bandera NVARCHAR(255) 
        );
    
    -- CAJA
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].caja')
        CREATE TABLE GRUPO_9800.caja (
            caja_nro_serie NVARCHAR(255) PRIMARY KEY,
            caja_modelo NVARCHAR(50) ,
        );
    
    -- MOTOR
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].motor')
        CREATE TABLE GRUPO_9800.motor (
            motor_nro_serie NVARCHAR(255) PRIMARY KEY,
            motor_modelo NVARCHAR(50) 
        );
    
    --FRENO
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].freno')
        CREATE TABLE GRUPO_9800.freno (
            freno_nro_serie NVARCHAR(255) PRIMARY KEY,
            freno_tamanio_pastilla decimal(18,2) 
        );
END

GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_TRANSACTIONAL_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP PROCEDURE GRUPO_9800.CREATE_TRANSACTIONAL_TABLES

GO

CREATE PROCEDURE [GRUPO_9800].CREATE_TRANSACTIONAL_TABLES
AS 
BEGIN 
    -- Neumatico
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'GRUPO_9800.neumatico')
	BEGIN
    CREATE TABLE GRUPO_9800.neumatico (
        neumatico_nro_serie NVARCHAR(255) PRIMARY KEY,
        id_tipo_neumatico smallint 
    );
		ALTER TABLE GRUPO_9800.neumatico
		ADD CONSTRAINT FK_NeumaticoTiponeumatico
		FOREIGN KEY (id_tipo_neumatico) REFERENCES GRUPO_9800.tipo_neumatico(id_tipo_neumatico);
	END
    -- Vehiculo
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].vehiculo')
    BEGIN   
	    CREATE TABLE GRUPO_9800.vehiculo (
            vehiculo_numero INT,
            vehiculo_modelo NVARCHAR(255),
            cod_escuderia INT ,
            cod_piloto INT ,
            PRIMARY KEY (vehiculo_numero, cod_escuderia)
        );
		ALTER TABLE GRUPO_9800.vehiculo
		ADD CONSTRAINT FK_VehiculoEscuderia
		FOREIGN KEY (cod_escuderia) REFERENCES GRUPO_9800.escuderia(cod_escuderia);

		ALTER TABLE GRUPO_9800.vehiculo
		ADD CONSTRAINT FK_vehiculoPiloto
		FOREIGN KEY (cod_piloto) REFERENCES GRUPO_9800.piloto(cod_piloto);
	END
    -- Circuito
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].circuito')
	BEGIN
        CREATE TABLE GRUPO_9800.circuito (
            circuito_codigo INT PRIMARY KEY,
            circuito_nombre NVARCHAR(255)  ,
            id_pais smallint,
        );
		ALTER TABLE GRUPO_9800.circuito
		ADD CONSTRAINT FK_CircuitoPais
		FOREIGN KEY (id_pais) REFERENCES GRUPO_9800.pais(id_pais);
	END
    -- Carrera
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].carrera')
	BEGIN
		CREATE TABLE GRUPO_9800.carrera (
			codigo_carrera INT PRIMARY KEY,
			carrera_fecha date,
			carrera_clima varchar(100),
			carrera_total_carrera numeric(18,2),
			carrera_cant_vueltas INT,
			circuito_codigo INT 
		);
		ALTER TABLE GRUPO_9800.carrera
		ADD CONSTRAINT FK_CarreraCircuito
		FOREIGN KEY (circuito_codigo) REFERENCES GRUPO_9800.circuito(circuito_codigo);
	END
    -- Sector

    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].sector')
	BEGIN
        CREATE TABLE GRUPO_9800.sector (
            codigo_sector INT,
            sector_distancia numeric(18,2),
            id_tipo_sector smallint,
            circuito_codigo INT,
            PRIMARY KEY (codigo_sector, circuito_codigo)
    );
		ALTER TABLE GRUPO_9800.sector
		ADD CONSTRAINT FK_SectorCircuito
		FOREIGN KEY (circuito_codigo) REFERENCES GRUPO_9800.circuito(circuito_codigo);

		ALTER TABLE GRUPO_9800.sector
		ADD CONSTRAINT FK_SectorTipoSector
		FOREIGN KEY (id_tipo_sector) REFERENCES GRUPO_9800.tipo_sector(id_tipo_sector);
	END

    -- PARADA BOX
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].parada_box')
	BEGIN
        CREATE TABLE GRUPO_9800.parada_box (
            cod_parada_box INT IDENTITY PRIMARY KEY,
            parada_box_vuelta numeric(18,0),
            parada_box_tiempo numeric(18,2),
            codigo_carrera INT,
    );

		ALTER TABLE GRUPO_9800.parada_box
		ADD CONSTRAINT FK_ParadaboxCarrera
		FOREIGN KEY(codigo_carrera) REFERENCES GRUPO_9800.carrera(codigo_carrera);
	END

    -- PARADA BOX X vehiculo
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].parada_box_por_vehiculo')
	BEGIN
        CREATE TABLE GRUPO_9800.parada_box_por_vehiculo (
			cod_parada_box_por_vehiculo INT IDENTITY PRIMARY KEY,
            cod_parada_box  INT,
            vehiculo_numero INT,
            cod_escuderia INT,
            nro_serie_neumatico_viejo NVARCHAR(255)	NULL,
            nro_serie_neumatico_nuevo NVARCHAR(255) NULL,
        );

		ALTER TABLE GRUPO_9800.parada_box_por_vehiculo
		ADD CONSTRAINT FK_ParadaboxporvehiculoParadabox
		FOREIGN KEY(cod_parada_box) REFERENCES GRUPO_9800.parada_box(cod_parada_box);

		ALTER TABLE GRUPO_9800.parada_box_por_vehiculo
		ADD CONSTRAINT FK_ParadaboxporvehiculoEscuderia
		FOREIGN KEY (cod_escuderia) REFERENCES GRUPO_9800.escuderia(cod_escuderia);

		ALTER TABLE GRUPO_9800.parada_box_por_vehiculo
		ADD CONSTRAINT FK_ParadaboxporvehiculoVehiculo
		FOREIGN KEY(vehiculo_numero,cod_escuderia) REFERENCES GRUPO_9800.vehiculo(vehiculo_numero,cod_escuderia);

		ALTER TABLE GRUPO_9800.parada_box_por_vehiculo
		ADD CONSTRAINT FK_ParadaboxporvehiculoNeumaticoViejo
		FOREIGN KEY(nro_serie_neumatico_viejo) REFERENCES GRUPO_9800.neumatico(neumatico_nro_serie);

		ALTER TABLE GRUPO_9800.parada_box_por_vehiculo
		ADD CONSTRAINT FK_ParadaboxporvehiculoNeumaticoNuevo
		FOREIGN KEY(nro_serie_neumatico_nuevo) REFERENCES GRUPO_9800.neumatico(neumatico_nro_serie);
	END
    -- TELEMETRIA AUTO
	IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].telemetria_auto')
	BEGIN
        CREATE TABLE GRUPO_9800.telemetria_auto (
            tele_auto_cod INT PRIMARY KEY,
            tele_fecha smalldatetime ,
            tele_auto_numero_vuelta numeric(18,0) ,
            tele_auto_distancia_carrera numeric(18,6) ,
            tele_auto_distancia_vuelta numeric(18,2) ,
            tele_auto_tiempo_vuelta numeric(18,10) ,
            tele_auto_posicion numeric(18,0) ,
            tele_auto_velocidad numeric(18,2) ,
            tele_auto_combustible numeric(18,2) ,
            vehiculo_numero INT ,
            cod_escuderia INT ,
            codigo_carrera INT ,
            codigo_sector INT ,
            circuito_codigo INT ,
    );

		ALTER TABLE GRUPO_9800.telemetria_auto
		ADD CONSTRAINT FK_TelemetriaautoAuto
		FOREIGN KEY (vehiculo_numero,cod_escuderia) REFERENCES GRUPO_9800.vehiculo(vehiculo_numero,cod_escuderia);

		ALTER TABLE GRUPO_9800.telemetria_auto
		ADD CONSTRAINT FK_TelemetriaautoCarrera
		FOREIGN KEY (codigo_carrera) REFERENCES GRUPO_9800.carrera(codigo_carrera);

		ALTER TABLE GRUPO_9800.telemetria_auto
		ADD CONSTRAINT FK_TelemetriaautoSector
		FOREIGN KEY (codigo_sector,circuito_codigo) REFERENCES GRUPO_9800.sector(codigo_sector,circuito_codigo);
	END

    -- TELEMETRIA CAJA
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].telemetria_caja')
	BEGIN
        CREATE TABLE GRUPO_9800.telemetria_caja (
            tele_auto_cod INT ,
            caja_nro_serie NVARCHAR(255) ,
            tele_caja_temp_aceite numeric(18,2) ,
            tele_caja_rpm numeric(18,2) ,
            tele_caja_desgaste numeric(18,2) ,
            PRIMARY KEY (tele_auto_cod, caja_nro_serie)
    );

		ALTER TABLE GRUPO_9800.telemetria_caja
		ADD CONSTRAINT FK_Telemetriacaja_Telemetriaauto
		FOREIGN KEY (tele_auto_cod) REFERENCES GRUPO_9800.telemetria_auto(tele_auto_cod);

		ALTER TABLE GRUPO_9800.telemetria_caja
		ADD CONSTRAINT FK_TelemetriacajaCaja
		FOREIGN KEY(caja_nro_serie) REFERENCES GRUPO_9800.caja(caja_nro_serie);
	END
    -- TELEMETRIA MOTOR
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].telemetria_motor')
	BEGIN
        CREATE TABLE GRUPO_9800.telemetria_motor (
        tele_auto_cod INT ,
        motor_nro_serie NVARCHAR(255) ,
        tele_motor_potencia numeric(18,6) ,
        tele_motor_temp_aceite numeric(18,6) ,
        tele_motor_temp_agua numeric(18,6) ,
        tele_motor_rpm numeric(18,6) ,
        PRIMARY KEY (tele_auto_cod, motor_nro_serie)
    );

		ALTER TABLE GRUPO_9800.telemetria_motor
		ADD CONSTRAINT FK_Telemetriamotor_Telemetriaauto
		FOREIGN KEY (tele_auto_cod) REFERENCES GRUPO_9800.telemetria_auto(tele_auto_cod);

		ALTER TABLE GRUPO_9800.telemetria_motor
		ADD CONSTRAINT FK_TelemetriamotorMotor
		FOREIGN KEY(motor_nro_serie) REFERENCES GRUPO_9800.motor(motor_nro_serie);
	END
    --- TELEMETRIA FRENO
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].telemetria_freno')
	BEGIN
        CREATE TABLE GRUPO_9800.telemetria_freno (
        tele_auto_cod INT ,
        freno_nro_serie NVARCHAR(255) ,
        tele_freno_grosor_pastilla decimal(18,2) ,
        tele_freno_tamanio_disco decimal(18,2) ,
        tele_freno_posicion NVARCHAR(255) ,
        tele_freno_temperatura numeric(18,2) ,
        PRIMARY KEY (tele_auto_cod, freno_nro_serie)
    );

		ALTER TABLE GRUPO_9800.telemetria_freno
		ADD CONSTRAINT FK_Telemetriafreno_Telemetriaauto
		FOREIGN KEY(tele_auto_cod) REFERENCES GRUPO_9800.telemetria_auto(tele_auto_cod);

		ALTER TABLE GRUPO_9800.telemetria_freno
		ADD CONSTRAINT FK_TelemetriafrenoFreno
		FOREIGN KEY(freno_nro_serie) REFERENCES GRUPO_9800.freno(freno_nro_serie);
	END
    -- TELEMETRIA NEUMATICO
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].telemetria_neumatico')
	BEGIN
 
		CREATE TABLE GRUPO_9800.telemetria_neumatico (
			tele_auto_cod INT ,
			neumatico_nro_serie NVARCHAR(255), 
			tele_neumatico_profundidad DECIMAL(18,6) ,
			tele_neumatico_posicion NVARCHAR(255) ,
			tele_neumatico_presion DECIMAL(18,6) ,
			tele_neumatico_temperatura DECIMAL(18,6) ,
			PRIMARY KEY (tele_auto_cod, neumatico_nro_serie)
		);

		ALTER TABLE GRUPO_9800.telemetria_neumatico
		ADD CONSTRAINT FK_Telemetrianeumatico_Telemetriaauto
		FOREIGN KEY(tele_auto_cod) REFERENCES GRUPO_9800.telemetria_auto(tele_auto_cod);
	end
    /*ALTER TABLE telemetria_neumatico
    ADD CONSTRAINT FK_TelemetrianeumaticoNeumatico
    FOREIGN KEY(neumatico_nro_serie) REFERENCES neumatico(neumatico_nro_serie);*/

    -- INCIDENTE
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].incidente')
	BEGIN
        CREATE TABLE GRUPO_9800.incidente (
        cod_incidente INT IDENTITY  PRIMARY KEY,
        codigo_sector INT ,
        circuito_codigo INT ,
        codigo_carrera INT ,
        tiempo_incidente decimal(18,2) ,
        id_incidente_bandera INT ,
    );

		ALTER TABLE GRUPO_9800.incidente
		ADD CONSTRAINT FK_IncidenteSector
		FOREIGN KEY (codigo_sector,circuito_codigo) REFERENCES GRUPO_9800.sector(codigo_sector,circuito_codigo);

		ALTER TABLE GRUPO_9800.incidente
		ADD CONSTRAINT FK_IncidenteCarrera
		FOREIGN KEY (codigo_carrera) REFERENCES GRUPO_9800.carrera(codigo_carrera);

		ALTER TABLE GRUPO_9800.incidente
		ADD CONSTRAINT FK_IncidenteBandera
		FOREIGN KEY (id_incidente_bandera) REFERENCES GRUPO_9800.bandera(id_incidente_bandera);
	END
    -- INCIDENTE POR AUTO
    IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = '[GRUPO_9800].incidente_por_auto')
	BEGIN
		CREATE TABLE GRUPO_9800.incidente_por_auto (
			vehiculo_numero INT,
			cod_escuderia INT,
			cod_incidente INT,
			id_tipo_incidente smallint,
			numero_vuelta DECIMAL(18,0),
			PRIMARY KEY (vehiculo_numero, cod_escuderia, cod_incidente)
		);

		ALTER TABLE GRUPO_9800.incidente_por_auto
		ADD CONSTRAINT FK_IncidenteporautoVehiculo
		FOREIGN KEY (vehiculo_numero,cod_escuderia) REFERENCES GRUPO_9800.vehiculo(vehiculo_numero,cod_escuderia);

		ALTER TABLE GRUPO_9800.incidente_por_auto
		ADD CONSTRAINT FK_IncidenteporautoIncidente
		FOREIGN KEY(cod_incidente) REFERENCES GRUPO_9800.incidente(cod_incidente);
	END    
END
GO

EXEC [GRUPO_9800].CREATE_MASTER_TABLES
GO
EXEC [GRUPO_9800].CREATE_TRANSACTIONAL_TABLES
GO

-- Caja 

CREATE PROCEDURE GRUPO_9800.migrar_caja
AS
BEGIN
	INSERT INTO GRUPO_9800.caja
	(caja_nro_serie, caja_modelo)
	SELECT TELE_CAJA_NRO_SERIE, TELE_CAJA_MODELO
	FROM gd_esquema.Maestra
	WHERE TELE_CAJA_NRO_SERIE IS NOT NULL
	GROUP BY TELE_CAJA_NRO_SERIE, TELE_CAJA_MODELO
END
GO

-- Motor


CREATE PROCEDURE GRUPO_9800.migrar_motor 
AS
BEGIN
	INSERT INTO GRUPO_9800.motor
	(motor_nro_serie, motor_modelo)
	SELECT DISTINCT TELE_MOTOR_NRO_SERIE, TELE_MOTOR_MODELO
	FROM gd_esquema.Maestra
	WHERE TELE_MOTOR_NRO_SERIE IS NOT NULL
	--GROUP BY TELE_MOTOR_NRO_SERIE, TELE_MOTOR_MODELO
	ORDER BY TELE_MOTOR_NRO_SERIE
END
GO

-- Freno

CREATE PROCEDURE GRUPO_9800.migrar_freno 
AS
BEGIN
	INSERT INTO GRUPO_9800.freno
	(freno_nro_serie, freno_tamanio_pastilla)
	select TELE_FRENO1_NRO_SERIE,TELE_FRENO1_TAMANIO_DISCO /*FRENO 1*/
	from gd_esquema.Maestra
	WHERE TELE_FRENO1_NRO_SERIE IS NOT NULL
	UNION
	select TELE_FRENO2_NRO_SERIE,TELE_FRENO2_TAMANIO_DISCO /*FRENO 2*/
	from gd_esquema.Maestra
	WHERE TELE_FRENO2_NRO_SERIE IS NOT NULL
	UNION
	select TELE_FRENO3_NRO_SERIE,TELE_FRENO3_TAMANIO_DISCO /*FRENO 3*/
	from gd_esquema.Maestra
	WHERE TELE_FRENO3_NRO_SERIE IS NOT NULL
	UNION
	select TELE_FRENO4_NRO_SERIE,TELE_FRENO4_TAMANIO_DISCO /*FRENO 4*/
	from gd_esquema.Maestra
	WHERE TELE_FRENO4_NRO_SERIE IS NOT NULL

END 

 
GO

-- Tipo neumatico

CREATE PROCEDURE [GRUPO_9800].migrar_tipo_neumatico 
AS
BEGIN
	INSERT INTO GRUPO_9800.tipo_neumatico
	(descripcion)
	select NEUMATICO1_TIPO_NUEVO 
	from gd_esquema.Maestra
	WHERE NEUMATICO1_TIPO_NUEVO IS NOT NULL
	UNION 
	select NEUMATICO2_TIPO_NUEVO 
	from gd_esquema.Maestra
	WHERE NEUMATICO2_TIPO_NUEVO IS NOT NULL
	UNION 
	select NEUMATICO3_TIPO_NUEVO 
	from gd_esquema.Maestra
	WHERE NEUMATICO3_TIPO_NUEVO IS NOT NULL
	UNION 
	select NEUMATICO4_TIPO_NUEVO
	from gd_esquema.Maestra
	WHERE NEUMATICO4_TIPO_NUEVO IS NOT NULL
	UNION 
	select NEUMATICO1_TIPO_VIEJO
	from gd_esquema.Maestra
	WHERE NEUMATICO1_TIPO_VIEJO IS NOT NULL
	UNION 
	select NEUMATICO2_TIPO_VIEJO
	FROM gd_esquema.Maestra
	WHERE NEUMATICO2_TIPO_VIEJO IS NOT NULL
	UNION 
	select NEUMATICO3_TIPO_VIEJO
	from gd_esquema.Maestra
	WHERE NEUMATICO3_TIPO_VIEJO IS NOT NULL
	UNION 
	select NEUMATICO4_TIPO_VIEJO
	from gd_esquema.Maestra
	WHERE NEUMATICO4_TIPO_VIEJO IS NOT NULL
END
GO

-- Tipo Sector

CREATE PROCEDURE [GRUPO_9800].migrar_tipo_sector 
AS
BEGIN
	INSERT INTO GRUPO_9800.tipo_sector
	(descripcion)
	select  SECTO_TIPO /*TIPO_SECTOR*/
	from gd_esquema.Maestra
	WHERE SECTO_TIPO IS NOT NULL
	group by SECTO_TIPO
	
END
GO

-- Tipo incidente

CREATE PROCEDURE GRUPO_9800.migrar_tipo_incidente 
AS
BEGIN
	INSERT INTO GRUPO_9800.tipo_incidente
	(descripcion)
	select INCIDENTE_TIPO /*TIPO_INCIDENTE*/
	from gd_esquema.Maestra
	WHERE INCIDENTE_TIPO IS NOT NULL
	GROUP BY INCIDENTE_TIPO
END
GO

-- Pais 

CREATE PROCEDURE GRUPO_9800.migrar_pais 
AS
BEGIN
	INSERT INTO GRUPO_9800.pais
	(nombre)
	select CIRCUITO_PAIS
	from gd_esquema.Maestra
	GROUP BY CIRCUITO_PAIS
END
GO


-- Bandera

CREATE PROCEDURE [GRUPO_9800].migrar_bandera
AS
BEGIN
	INSERT INTO GRUPO_9800.bandera
	(incidente_bandera)
	select INCIDENTE_BANDERA 
	from gd_esquema.Maestra
	WHERE INCIDENTE_BANDERA IS NOT NULL
	GROUP BY INCIDENTE_BANDERA
END
GO
 
--Escuderia

CREATE PROCEDURE [GRUPO_9800].migrar_escuderia 
AS
BEGIN
    INSERT INTO GRUPO_9800.escuderia
	(escuderia_nombre, escuderia_nacionalidad)
    select ESCUDERIA_NOMBRE,ESCUDERIA_NACIONALIDAD
    from gd_esquema.Maestra
	GROUP BY ESCUDERIA_NOMBRE,ESCUDERIA_NACIONALIDAD
END
GO

-- Piloto

CREATE PROCEDURE [GRUPO_9800].migrar_piloto 
AS
BEGIN
    INSERT INTO GRUPO_9800.piloto
    (piloto_nombre, piloto_apellido, piloto_nacionalidad, piloto_fecha_nacimiento)
    select PILOTO_NOMBRE, PILOTO_APELLIDO, PILOTO_NACIONALIDAD, PILOTO_FECHA_NACIMIENTO 
    from gd_esquema.Maestra
	GROUP BY 
	PILOTO_NOMBRE, 
	PILOTO_APELLIDO, 
	PILOTO_NACIONALIDAD, 
	PILOTO_FECHA_NACIMIENTO
END
GO

-- Circuito

CREATE PROCEDURE [GRUPO_9800].migrar_circuito
AS
    BEGIN
        INSERT INTO GRUPO_9800.circuito
        (circuito_codigo,circuito_nombre,id_pais)
        SELECT CIRCUITO_CODIGO,CIRCUITO_NOMBRE,p.id_pais
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.pais p ON p.nombre = CIRCUITO_PAIS
		WHERE CIRCUITO_CODIGO IS NOT NULL
		GROUP BY CIRCUITO_CODIGO,CIRCUITO_NOMBRE,p.id_pais
    END
GO

-- Carrera

CREATE PROCEDURE [GRUPO_9800].migrar_carrera
AS 
BEGIN 
	INSERT INTO GRUPO_9800.carrera
	(codigo_carrera,carrera_fecha,carrera_clima,carrera_cant_vueltas,circuito_codigo)
	SELECT CODIGO_CARRERA,CARRERA_FECHA,CARRERA_CLIMA,CARRERA_CANT_VUELTAS,CIRCUITO_CODIGO
	FROM gd_esquema.Maestra
	WHERE CODIGO_CARRERA IS NOT NULL
	GROUP BY CODIGO_CARRERA,CARRERA_FECHA,CARRERA_CLIMA,CARRERA_CANT_VUELTAS,CIRCUITO_CODIGO
END 
GO


-- Sector

CREATE PROCEDURE [GRUPO_9800].migrar_sector
AS 
BEGIN 
	INSERT INTO GRUPO_9800.sector
	(codigo_sector,circuito_codigo,sector_distancia,id_tipo_sector)
	SELECT CODIGO_SECTOR,CIRCUITO_CODIGO,SECTOR_DISTANCIA,ti.id_tipo_sector
	FROM gd_esquema.Maestra
	JOIN GRUPO_9800.tipo_sector ti ON ti.descripcion = SECTO_TIPO
	WHERE CODIGO_SECTOR IS NOT NULL
	AND CIRCUITO_CODIGO IS NOT NULL
	GROUP BY CODIGO_SECTOR,CIRCUITO_CODIGO,SECTOR_DISTANCIA,ti.id_tipo_sector
END 
GO

-- Parada box

CREATE PROCEDURE [GRUPO_9800].migrar_parada_box
AS
BEGIN 
	INSERT INTO GRUPO_9800.parada_box
	(parada_box_vuelta,parada_box_tiempo,codigo_carrera)
	SELECT  PARADA_BOX_VUELTA,PARADA_BOX_TIEMPO,CODIGO_CARRERA
	FROM gd_esquema.Maestra
	GROUP BY PARADA_BOX_VUELTA,PARADA_BOX_TIEMPO,CODIGO_CARRERA
END 

----------------------------
GO

-- Telemetria caja

CREATE PROCEDURE [GRUPO_9800].migrar_telemetria_caja
AS 
BEGIN
	INSERT INTO GRUPO_9800.telemetria_caja
	SELECT TELE_AUTO_CODIGO,TELE_CAJA_NRO_SERIE,TELE_CAJA_TEMP_ACEITE,TELE_CAJA_RPM,TELE_CAJA_DESGASTE
	FROM gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_CAJA_NRO_SERIE IS NOT NULL
END

GO

-- Telemetria motor

CREATE PROCEDURE [GRUPO_9800].migrar_telemetria_motor
AS 
BEGIN
	INSERT INTO GRUPO_9800.telemetria_motor
	SELECT TELE_AUTO_CODIGO,TELE_MOTOR_NRO_SERIE,TELE_MOTOR_POTENCIA,
			TELE_MOTOR_TEMP_ACEITE,TELE_MOTOR_TEMP_AGUA,TELE_MOTOR_RPM
	FROM gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_MOTOR_NRO_SERIE IS NOT NULL
END

GO


--Telemetria neumatico

CREATE PROCEDURE [GRUPO_9800].migrar_telemetria_neumatico
AS 
BEGIN
	INSERT INTO GRUPO_9800.telemetria_neumatico
	(tele_auto_cod,neumatico_nro_serie,tele_neumatico_profundidad,tele_neumatico_posicion,tele_neumatico_presion,tele_neumatico_temperatura)
	SELECT TELE_AUTO_CODIGO,TELE_NEUMATICO1_NRO_SERIE,TELE_NEUMATICO1_PROFUNDIDAD,TELE_NEUMATICO1_POSICION,	
			TELE_NEUMATICO1_PRESION, TELE_NEUMATICO1_TEMPERATURA /*NEUMATICO*/
	FROM gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO1_NRO_SERIE IS NOT NULL
	UNION
	SELECT TELE_AUTO_CODIGO,TELE_NEUMATICO2_NRO_SERIE,TELE_NEUMATICO2_PROFUNDIDAD,TELE_NEUMATICO2_POSICION,	
			TELE_NEUMATICO2_PRESION, TELE_NEUMATICO2_TEMPERATURA /*NEUMATICO 2*/
	FROM gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO2_NRO_SERIE IS NOT NULL
	UNION
	SELECT TELE_AUTO_CODIGO,TELE_NEUMATICO3_NRO_SERIE,TELE_NEUMATICO3_PROFUNDIDAD,TELE_NEUMATICO3_POSICION,	
			TELE_NEUMATICO3_PRESION, TELE_NEUMATICO3_TEMPERATURA /*NEUMATICO 3*/
	FROM gd_esquema.Maestra
		WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO3_NRO_SERIE IS NOT NULL
	UNION
	SELECT TELE_AUTO_CODIGO,TELE_NEUMATICO4_NRO_SERIE,TELE_NEUMATICO4_PROFUNDIDAD,TELE_NEUMATICO4_POSICION,	
			TELE_NEUMATICO4_PRESION, TELE_NEUMATICO4_TEMPERATURA /*NEUMATICO 4*/
	FROM gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO4_NRO_SERIE IS NOT NULL
END 
GO     


--Telemetria freno

CREATE PROCEDURE [GRUPO_9800].migrar_telemetria_freno
AS 
BEGIN
	INSERT INTO GRUPO_9800.telemetria_freno
	select TELE_AUTO_CODIGO ,TELE_FRENO1_NRO_SERIE,TELE_FRENO1_GROSOR_PASTILLA,TELE_FRENO1_TAMANIO_DISCO,
			TELE_FRENO1_POSICION,TELE_FRENO1_TEMPERATURA
	FROM gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO1_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO2_NRO_SERIE,TELE_FRENO2_GROSOR_PASTILLA,TELE_FRENO2_TAMANIO_DISCO,
			TELE_FRENO2_POSICION,TELE_FRENO2_TEMPERATURA /*FRENO 2*/
	from gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO2_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO3_NRO_SERIE,TELE_FRENO3_GROSOR_PASTILLA,TELE_FRENO3_TAMANIO_DISCO,
			TELE_FRENO3_POSICION,TELE_FRENO3_TEMPERATURA /*FRENO 3*/
	from gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO3_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO4_NRO_SERIE,TELE_FRENO4_GROSOR_PASTILLA,TELE_FRENO4_TAMANIO_DISCO,
			TELE_FRENO4_POSICION,TELE_FRENO4_TEMPERATURA /*FRENO 4*/
	from gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO4_NRO_SERIE IS NOT NULL
	 
END


GO

--Telemetria auto

CREATE PROCEDURE [GRUPO_9800].migrar_telemetria_auto
AS
BEGIN 

	INSERT INTO GRUPO_9800.telemetria_auto
	(tele_auto_cod,vehiculo_numero,cod_escuderia,codigo_carrera,tele_fecha,tele_auto_numero_vuelta,codigo_sector,circuito_codigo,
	tele_auto_distancia_carrera,tele_auto_distancia_vuelta,tele_auto_tiempo_vuelta,tele_auto_posicion,
	tele_auto_combustible)
	SELECT TELE_AUTO_CODIGO,AUTO_NUMERO,e.cod_escuderia,CODIGO_CARRERA,CARRERA_FECHA,TELE_AUTO_NUMERO_VUELTA,CODIGO_SECTOR,CIRCUITO_CODIGO,
			TELE_AUTO_DISTANCIA_CARRERA,TELE_AUTO_DISTANCIA_VUELTA,TELE_AUTO_TIEMPO_VUELTA,TELE_AUTO_POSICION,
			TELE_AUTO_COMBUSTIBLE
	FROM gd_esquema.Maestra m
	JOIN GRUPO_9800.escuderia e ON e.escuderia_nombre = m.ESCUDERIA_NOMBRE 
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	GROUP BY TELE_AUTO_CODIGO,AUTO_NUMERO,e.cod_escuderia,CODIGO_CARRERA,CARRERA_FECHA,TELE_AUTO_NUMERO_VUELTA,CODIGO_SECTOR,CIRCUITO_CODIGO,
			TELE_AUTO_DISTANCIA_CARRERA,TELE_AUTO_DISTANCIA_VUELTA,TELE_AUTO_TIEMPO_VUELTA,TELE_AUTO_POSICION,
			TELE_AUTO_COMBUSTIBLE
END 
GO

-- Incidente

CREATE PROCEDURE [GRUPO_9800].migrar_incidente
AS
    BEGIN
        INSERT INTO GRUPO_9800.incidente
        (codigo_sector,circuito_codigo, codigo_carrera, tiempo_incidente,id_incidente_bandera)
        SELECT CODIGO_SECTOR,CIRCUITO_CODIGO, CODIGO_CARRERA, INCIDENTE_TIEMPO, ti.id_incidente_bandera
        FROM gd_esquema.Maestra m
		JOIN GRUPO_9800.bandera ti ON ti.incidente_bandera = m.INCIDENTE_BANDERA
		WHERE INCIDENTE_TIPO IS NOT NULL
		GROUP BY CODIGO_SECTOR,CIRCUITO_CODIGO, CODIGO_CARRERA, INCIDENTE_TIEMPO, ti.id_incidente_bandera
    END
GO

-- Incidente por auto

CREATE PROCEDURE [GRUPO_9800].migrar_incidente_por_auto
AS
    BEGIN
        INSERT INTO GRUPO_9800.incidente_por_auto
        (vehiculo_numero,cod_escuderia,cod_incidente,id_tipo_incidente,numero_vuelta)
        SELECT AUTO_NUMERO,e.cod_escuderia, i.cod_incidente,ti.id_tipo_incidente,INCIDENTE_NUMERO_VUELTA
        FROM gd_esquema.maestra m
		JOIN GRUPO_9800.escuderia e ON e.escuderia_nombre = m.ESCUDERIA_NOMBRE 
						AND e.escuderia_nacionalidad = m.ESCUDERIA_NACIONALIDAD
		JOIN GRUPO_9800.bandera b ON b.incidente_bandera =  m.INCIDENTE_BANDERA
		JOIN GRUPO_9800.incidente i ON m.INCIDENTE_TIEMPO = i.tiempo_incidente
						AND m.CODIGO_CARRERA = i.codigo_carrera 
						AND m.CIRCUITO_CODIGO = i.circuito_codigo
						AND m.CODIGO_SECTOR = i.codigo_sector
						AND i.id_incidente_bandera = b.id_incidente_bandera
		JOIN GRUPO_9800.tipo_incidente ti ON m.INCIDENTE_TIPO = ti.descripcion 
		--GROUP BY AUTO_NUMERO,cod_escuderia,i.cod_incidente,ti.id_tipo_incidente,INCIDENTE_NUMERO_VUELTA
    END
GO

-- Vehiculo

CREATE PROCEDURE [GRUPO_9800].migrar_vehiculo
AS
BEGIN
        INSERT INTO GRUPO_9800.vehiculo
        (vehiculo_numero,cod_escuderia,vehiculo_modelo)
        SELECT AUTO_NUMERO, e.cod_escuderia, AUTO_MODELO
        FROM gd_esquema.maestra m
		JOIN GRUPO_9800.escuderia e ON e.escuderia_nombre = m.ESCUDERIA_NOMBRE
		WHERE AUTO_NUMERO IS NOT NULL
		GROUP BY AUTO_NUMERO,e.cod_escuderia, AUTO_MODELO
END

GO

-- Neumatico

CREATE PROCEDURE [GRUPO_9800].migrar_neumatico 
AS
    BEGIN
        INSERT INTO GRUPO_9800.neumatico
        (neumatico_nro_serie,id_tipo_neumatico)
        SELECT NEUMATICO1_NRO_SERIE_VIEJO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra m
		JOIN GRUPO_9800.tipo_neumatico ti ON m.NEUMATICO1_TIPO_VIEJO = ti.descripcion
		WHERE NEUMATICO1_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO2_NRO_SERIE_VIEJO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra m
		JOIN GRUPO_9800.tipo_neumatico ti ON m.NEUMATICO2_TIPO_VIEJO = ti.descripcion
		WHERE NEUMATICO2_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO3_NRO_SERIE_VIEJO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.tipo_neumatico ti ON NEUMATICO3_TIPO_VIEJO = ti.descripcion
		WHERE NEUMATICO3_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO4_NRO_SERIE_VIEJO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.tipo_neumatico ti ON NEUMATICO4_TIPO_VIEJO = ti.descripcion
		WHERE NEUMATICO4_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO1_NRO_SERIE_NUEVO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.tipo_neumatico ti ON NEUMATICO1_TIPO_NUEVO = ti.descripcion
		WHERE NEUMATICO1_NRO_SERIE_NUEVO IS NOT NULL
        UNION
        SELECT NEUMATICO2_NRO_SERIE_NUEVO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.tipo_neumatico ti ON NEUMATICO2_TIPO_NUEVO = ti.descripcion
		WHERE NEUMATICO2_NRO_SERIE_NUEVO IS NOT NULL
        UNION
        SELECT NEUMATICO3_NRO_SERIE_NUEVO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.tipo_neumatico ti ON NEUMATICO3_TIPO_NUEVO = ti.descripcion
		WHERE NEUMATICO3_NRO_SERIE_NUEVO IS NOT NULL
        UNION
        SELECT NEUMATICO4_NRO_SERIE_NUEVO,ti.id_tipo_neumatico
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.tipo_neumatico ti ON NEUMATICO4_TIPO_NUEVO = ti.descripcion
		WHERE NEUMATICO4_NRO_SERIE_NUEVO IS NOT NULL
		UNION
		SELECT TELE_NEUMATICO1_NRO_SERIE,ti.id_tipo_neumatico
        FROM gd_esquema.maestra
		JOIN GRUPO_9800.tipo_neumatico ti ON TELE_NEUMATICO1_NRO_SERIE = ti.descripcion
		WHERE NEUMATICO4_NRO_SERIE_NUEVO IS NOT NULL
END
GO

--Parada box por vehiculo

CREATE PROCEDURE [GRUPO_9800].migrar_parada_box_por_vehiculo
AS
BEGIN 
	INSERT INTO GRUPO_9800.parada_box_por_vehiculo
	(cod_parada_box,cod_escuderia,vehiculo_numero,nro_serie_neumatico_nuevo,nro_serie_neumatico_viejo)
	SELECT p.cod_parada_box,e.cod_escuderia,AUTO_NUMERO,NEUMATICO1_NRO_SERIE_NUEVO ,NEUMATICO1_NRO_SERIE_VIEJO
	FROM gd_esquema.Maestra	m
	JOIN GRUPO_9800.escuderia e ON e.escuderia_nombre =  m.ESCUDERIA_NOMBRE
	JOIN GRUPO_9800.parada_box p ON (p.codigo_carrera= m.CODIGO_CARRERA
	AND p.parada_box_vuelta = m.PARADA_BOX_VUELTA 
	AND p.parada_box_tiempo = m.PARADA_BOX_TIEMPO)
	WHERE AUTO_NUMERO IS NOT NULL
	GROUP BY p.cod_parada_box,e.cod_escuderia,AUTO_NUMERO,NEUMATICO1_NRO_SERIE_NUEVO,NEUMATICO1_NRO_SERIE_VIEJO
	UNION
    SELECT p.cod_parada_box,e.cod_escuderia,AUTO_NUMERO,NEUMATICO2_NRO_SERIE_NUEVO ,NEUMATICO2_NRO_SERIE_VIEJO
	FROM gd_esquema.Maestra	m
	JOIN GRUPO_9800.escuderia e ON e.escuderia_nombre =  m.ESCUDERIA_NOMBRE
	JOIN GRUPO_9800.parada_box p ON (p.codigo_carrera= m.CODIGO_CARRERA
	AND p.parada_box_vuelta = m.PARADA_BOX_VUELTA 
	AND p.parada_box_tiempo = m.PARADA_BOX_TIEMPO)
	WHERE AUTO_NUMERO IS NOT NULL
	GROUP BY cod_parada_box,cod_escuderia,AUTO_NUMERO,NEUMATICO2_NRO_SERIE_NUEVO,NEUMATICO2_NRO_SERIE_VIEJO
    UNION
    SELECT p.cod_parada_box,e.cod_escuderia,AUTO_NUMERO,NEUMATICO3_NRO_SERIE_NUEVO ,NEUMATICO3_NRO_SERIE_VIEJO
	FROM gd_esquema.Maestra	m
	JOIN GRUPO_9800.escuderia e ON e.escuderia_nombre =  m.ESCUDERIA_NOMBRE
	JOIN GRUPO_9800.parada_box p ON (p.codigo_carrera= m.CODIGO_CARRERA
	AND p.parada_box_vuelta = m.PARADA_BOX_VUELTA 
	AND p.parada_box_tiempo = m.PARADA_BOX_TIEMPO)
	WHERE AUTO_NUMERO IS NOT NULL
	GROUP BY cod_parada_box,cod_escuderia,AUTO_NUMERO,NEUMATICO3_NRO_SERIE_NUEVO,NEUMATICO3_NRO_SERIE_VIEJO
    UNION
    SELECT p.cod_parada_box,e.cod_escuderia,AUTO_NUMERO,NEUMATICO4_NRO_SERIE_NUEVO ,NEUMATICO4_NRO_SERIE_VIEJO
	FROM gd_esquema.Maestra	m
	JOIN GRUPO_9800.escuderia e ON e.escuderia_nombre =  m.ESCUDERIA_NOMBRE
	JOIN GRUPO_9800.parada_box p ON (p.codigo_carrera= m.CODIGO_CARRERA
	AND p.parada_box_vuelta = m.PARADA_BOX_VUELTA 
	AND p.parada_box_tiempo = m.PARADA_BOX_TIEMPO)
	WHERE AUTO_NUMERO IS NOT NULL
	GROUP BY cod_parada_box,cod_escuderia,AUTO_NUMERO,NEUMATICO4_NRO_SERIE_NUEVO,NEUMATICO4_NRO_SERIE_VIEJO	
END 

GO

------------------- EJECUCION DE STORED PROCEDURES: MIGRACION -------------------
BEGIN TRANSACTION
BEGIN TRY
	
    EXECUTE [GRUPO_9800].migrar_caja -- OK
    EXECUTE [GRUPO_9800].migrar_motor -- OK
    EXECUTE [GRUPO_9800].migrar_freno -- OK
    EXECUTE [GRUPO_9800].migrar_tipo_neumatico -- OK
    EXECUTE [GRUPO_9800].migrar_tipo_sector  -- OK
    EXECUTE [GRUPO_9800].migrar_tipo_incidente -- OK
    EXECUTE [GRUPO_9800].migrar_pais -- OK
    EXECUTE [GRUPO_9800].migrar_bandera -- OK
    EXECUTE [GRUPO_9800].migrar_escuderia -- OK
    EXECUTE [GRUPO_9800].migrar_piloto -- OK
	EXECUTE [GRUPO_9800].migrar_neumatico -- OK 
	EXECUTE [GRUPO_9800].migrar_circuito -- OK
	EXECUTE [GRUPO_9800].migrar_carrera -- OK
	EXECUTE [GRUPO_9800].migrar_parada_box -- OK
	EXECUTE [GRUPO_9800].migrar_vehiculo -- OK
	EXECUTE [GRUPO_9800].migrar_sector -- OK
	EXECUTE [GRUPO_9800].migrar_incidente -- OK
	EXECUTE [GRUPO_9800].migrar_telemetria_auto -- OK
	EXECUTE [GRUPO_9800].migrar_telemetria_caja -- OK
	EXECUTE [GRUPO_9800].migrar_telemetria_motor -- OK
	EXECUTE [GRUPO_9800].migrar_telemetria_freno -- OK
	EXECUTE [GRUPO_9800].migrar_parada_box_por_vehiculo -- OK
	EXECUTE [GRUPO_9800].migrar_incidente_por_auto -- OK
	EXECUTE [GRUPO_9800].migrar_telemetria_neumatico -- OK

END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vacías o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

IF (	EXISTS (SELECT 1 FROM [GRUPO_9800].carrera)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].circuito)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].sector)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].incidente)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].vehiculo)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].escuderia)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].piloto)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].parada_box)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].neumatico)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].telemetria_auto)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].telemetria_motor)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].telemetria_neumatico)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].telemetria_freno)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].telemetria_caja)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].caja)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].motor)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].freno)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].incidente_por_auto)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].parada_box_por_vehiculo)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].tipo_neumatico)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].tipo_sector)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].tipo_incidente)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].pais)
    AND EXISTS (SELECT 1 FROM [GRUPO_9800].bandera))
BEGIN
	PRINT 'Migracion Exitosa';
	COMMIT TRANSACTION;
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
	THROW 50002, 'Hubo un error al migrar en una o mas tablas. Todos los cambios fueron deshechos, ninguna tabla fue cargada en la base.',1;
END

--PILOTO
GO
IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_PILOTO') 
	DROP INDEX GRUPO_9800.piloto.INDEX_PILOTO
GO

CREATE INDEX INDEX_PILOTO 
ON GRUPO_9800.piloto(cod_piloto,piloto_nacionalidad);


--CAJA
IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_CAJA') 
	DROP INDEX GRUPO_9800.caja.INDEX_CAJA
GO

CREATE INDEX INDEX_CAJA 
ON GRUPO_9800.caja(caja_nro_serie,caja_modelo);


--MOTOR
IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_MOTOR') 
	DROP INDEX GRUPO_9800.motor.INDEX_MOTOR
GO

CREATE INDEX INDEX_MOTOR 
ON GRUPO_9800.motor(motor_nro_serie,motor_modelo);


--VEHICULO
IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_VEHICULO') 
	DROP INDEX GRUPO_9800.vehiculo.INDEX_VEHICULO
GO

CREATE INDEX INDEX_VEHICULO 
ON GRUPO_9800.vehiculo(vehiculo_modelo);


--PARADA_BOX
IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_PARADA_BOX') 
	DROP INDEX GRUPO_9800.parada_box.INDEX_PARADA_BOX 
GO

CREATE INDEX INDEX_PARADA_BOX
ON GRUPO_9800.parada_box(codigo_carrera);

IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_TELE_AUTO') 
	DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO 
GO

CREATE INDEX INDEX_TELE_AUTO
ON GRUPO_9800.telemetria_auto(vehiculo_numero,cod_escuderia);


IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_TELE_AUTO_II') 
	DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO_II 
GO

CREATE INDEX INDEX_TELE_AUTO_II
ON GRUPO_9800.telemetria_auto(vehiculo_numero,cod_escuderia,codigo_carrera);

IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_TELE_AUTO_III') 
	DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO_III 
GO
CREATE INDEX INDEX_TELE_AUTO_III
ON GRUPO_9800.telemetria_auto(codigo_sector,codigo_carrera);


IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_TELE_AUTO_IV') 
	DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO_IV 
GO
CREATE INDEX INDEX_TELE_AUTO_IV
ON GRUPO_9800.telemetria_auto(codigo_sector,circuito_codigo);



IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_TELE_MOTOR') 
	DROP INDEX GRUPO_9800.telemetria_motor.INDEX_TELE_MOTOR 
GO
CREATE INDEX INDEX_TELE_MOTOR
ON GRUPO_9800.telemetria_motor(tele_motor_potencia);


IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_TELE_MOTOR_II') 
	DROP INDEX GRUPO_9800.telemetria_motor.INDEX_TELE_MOTOR_II 
GO
CREATE INDEX INDEX_TELE_MOTOR_II
ON GRUPO_9800.telemetria_motor(tele_motor_rpm);

IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_INCIDENTE') 
	DROP INDEX GRUPO_9800.incidente.INDEX_INCIDENTE 
GO
CREATE INDEX INDEX_INCIDENTE
ON GRUPO_9800.incidente(circuito_codigo,codigo_sector);

IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_INCIDENTE_II') 
	DROP INDEX GRUPO_9800.incidente.INDEX_INCIDENTE_II 
GO

CREATE INDEX INDEX_INCIDENTE_II
ON GRUPO_9800.incidente(codigo_carrera,codigo_sector);

IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_INCIDENTE_III') 
	DROP INDEX GRUPO_9800.incidente.INDEX_INCIDENTE_III 
GO

CREATE INDEX INDEX_INCIDENTE_III
ON GRUPO_9800.incidente(codigo_carrera);


IF EXISTS (SELECT [name] FROM sys.indexes WHERE [name] = 'INDEX_TIPO_INCIDENTE') 
	DROP INDEX GRUPO_9800.incidente_por_auto.INDEX_TIPO_INCIDENTE 
GO
CREATE INDEX INDEX_TIPO_INCIDENTE
ON GRUPO_9800.incidente_por_auto(id_tipo_incidente);

-------
/*
DROP INDEX GRUPO_9800.piloto.INDEX_PILOTO 
DROP INDEX GRUPO_9800.caja.INDEX_CAJA
DROP INDEX GRUPO_9800.motor.INDEX_MOTOR
DROP INDEX GRUPO_9800.vehiculo.INDEX_VEHICULO
DROP INDEX GRUPO_9800.parada_box.INDEX_PARADA_BOX
DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO
DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO_II
DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO_III
DROP INDEX GRUPO_9800.telemetria_auto.INDEX_TELE_AUTO_IV
DROP INDEX GRUPO_9800.telemetria_motor.INDEX_TELE_MOTOR
DROP INDEX GRUPO_9800.telemetria_motor.INDEX_TELE_MOTOR
DROP INDEX GRUPO_9800.incidente.INDEX_INCIDENTE
DROP INDEX GRUPO_9800.incidente.INDEX_INCIDENTE
DROP INDEX GRUPO_9800.incidente.INDEX_INCIDENTE
DROP INDEX GRUPO_9800.incidente_por_auto.INDEX_TIPO_INCIDENTE

*/
  
