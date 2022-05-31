USE [GD1C2022]
GO
------------------- CREO BASE DE DATOS -------------------
CREATE DATABASE TELEMETRIA_CARRERA;
GO
------------------- CREACION DE TABLAS -------------------
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'carrera')
CREATE TABLE TELEMETRIA_CARRERA.carrera (
    codigo_carrera INT NOT NULL PRIMARY KEY,
    carrera_fecha timestamp with time zone NOT NULL,
    carrera_clima varchar(100) NOT NULL,
    carrera_total_carrera numeric(18,2) NOT NULL,
    carrera_cant_vueltas INT NOT NULL,
    circuito_codigo INT NOT NULL REFERENCES TELEMETRIA_CARRERA.circuito
);


-- Aca es compuesta
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'tables')
CREATE TABLE TELEMETRIA_CARRERA.circuito (
    circuito_codigo INT NOT NULL PRIMARY KEY,
    circuito_nombre NVARCHAR NOT NULL,
    id_pais smallint NOT NULL REFERENCES TELEMETRIA_CARRERA.pais,
    codigo_sector  NOT NULL REFERENCES TELEMETRIA_CARRERA.sector
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'sector')
CREATE TABLE TELEMETRIA_CARRERA.sector (
    codigo_sector INT NOT NULL,
    circuito_codigo INT NOT NULL REFERENCES TELEMETRIA_CARRERA.circuito,
    sector_distancia numeric(18,2) NOT NULL,
    id_tipo_sector smallint NOT NULL REFERENCES TELEMETRIA_CARRERA.tipo_sector,
    PRIMARY KEY (codigo_sector, circuito_codigo)
);


-- Aca hay algo mal en las claves
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'incidente')
CREATE TABLE TELEMETRIA_CARRERA.incidente (
    cod_incidente INT NOT NULL PRIMARY KEY,
    codigo_sector INT NOT NULL REFERENCES TELEMETRIA_CARRERA.sector,
    codigo_carrera INT NOT NULL REFERENCES TELEMETRIA_CARRERA.carrera,
    tiempo_incidente timestamp with time zone NOT NULL,
    id_indicente_bandera NVARCHAR NOT NULL REFERENCES TELEMETRIA_CARRERA.bandera,
    auto_numero  NOT NULL,
    incidente_tipo  NOT NULL REFERENCES TELEMETRIA_CARRERA.tipo_incidente,
    incidente_numero_vuelta  NOT NULL
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'auto')
CREATE TABLE TELEMETRIA_CARRERA.auto (
    auto_numero INT NOT NULL,
    cod_escuderia INT NOT NULL REFERENCES TELEMETRIA_CARRERA.escuderia,
    auto_modelo NVARCHAR(255) NOT NULL,
    cod_piloto INT NOT NULL,
    PRIMARY KEY (auto_numero, cod_escuderia)
);


-- Escuderia
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'escuderia')
CREATE TABLE TELEMETRIA_CARRERA.escuderia (
    cod_escuderia INT NOT NULL IDENTITY PRIMARY KEY,
    escuderia_nombre NVARCHAR(255) NOT NULL,
    escuderia_nacionalidad NVARCHAR(255) NOT NULL
);


-- Piloto
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'piloto')
CREATE TABLE TELEMETRIA_CARRERA.piloto (
    cod_piloto INT NOT NULL IDENTITY PRIMARY KEY,
    piloto_nombre NVARCHAR(50) NOT NULL,
    piloto_apellido NVARCHAR(50) NOT NULL,
    piloto_nacionalidad NVARCHAR(50) NOT NULL,
    piloto_fecha_nacimiento DATETIME NOT NULL
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'parada_box')
CREATE TABLE TELEMETRIA_CARRERA.parada_box (
    cod_parada_box INT NOT NULL PRIMARY KEY,
    parada_box_vuelta numeric(18,0) NOT NULL,
    parada_box_tiempo numeric(18,2) NOT NULL,
    codigo_carrera INT NOT NULL REFERENCES TELEMETRIA_CARRERA.carrera,
    auto_numero INT NOT NULL, -- !!!
    cod_escuderia INT NOT NULL -- !!!
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'neumatico')
CREATE TABLE TELEMETRIA_CARRERA.neumatico (
    neumatico_nro_serie INT NOT NULL PRIMARY KEY,
    neumatico_nro  NOT NULL,
    neumatico_estado NVARCHAR NOT NULL,
    neumatico_posicion  NOT NULL,
    id_tipo_neumatico smallint NOT NULL REFERENCES TELEMETRIA_CARRERA.tipo_neumatico,
    neumatico_profundidad numeric(18,2) NOT NULL
);


-- mirar las claves
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'telemetria_auto')
CREATE TABLE TELEMETRIA_CARRERA.telemetria_auto (
    tele_auto_cod INT NOT NULL PRIMARY KEY,
    auto_numero INT NOT NULL,
    codigo_carrera INT NOT NULL,
    tele_fecha timestamp with time zone NOT NULL,
    tele_auto_numero_vuelta numeric(18,0) NOT NULL,
    codigo_sector INT NOT NULL,
    tele_auto_distancia_carrera numeric(18,6) NOT NULL,
    tele_auto_distancia_vuelta numeric(18,2) NOT NULL,
    tele_auto_tiempo_vuelta numeric(18,10) NOT NULL,
    tele_auto_posicion numeric(18,0) NOT NULL,
    tele_auto_velocidad numeric(18,2) NOT NULL,
    tele_auto_combustible numeric(18,2) NOT NULL,
    tele_caja_nro_serie  NOT NULL,
    tele_motor_nro_serie  NOT NULL,
    tele_neumatico_nro_serie  NOT NULL,
    tele_freno_nro_serie  NOT NULL,
    caja_nro_serie NVARCHAR NOT NULL,
    motor_nro_serie NVARCHAR NOT NULL,
    neumatico_nro_serie NVARCHAR NOT NULL,
    freno_nro_serie NVARCHAR NOT NULL
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'telemetria_motor')
CREATE TABLE TELEMETRIA_CARRERA.telemetria_motor (
    tele_auto_cod INT NOT NULL,
    motor_nro_serie NVARCHAR NOT NULL REFERENCES TELEMETRIA_CARRERA.motor,
    motor_modelo NVARCHAR NOT NULL, -- !!!
    tele_motor_potencia numeric(18,6) NOT NULL,
    tele_motor_temp_aceite numeric(18,6) NOT NULL,
    tele_motor_temp_agua numeric(18,6) NOT NULL,
    tele_motor_rpm numeric(18,6) NOT NULL,
    PRIMARY KEY (tele_auto_cod, motor_nro_serie)
);

-- claves mirar
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'telemetria_neumatico')
CREATE TABLE TELEMETRIA_CARRERA.telemetria_neumatico (
    tele_auto_cod INT NOT NULL,
    neumatico_nro_serie NVARCHAR NOT NULL,
    neumatico_nro  NOT NULL,
    tele_neumatico_profundidad numeric(18,6) NOT NULL,
    tele_neumatico_posicion NVARCHAR NOT NULL,
    tele_neumatico_presion numeric(18,6) NOT NULL,
    tele_neumatico_temperatura numeric(18,6) NOT NULL,
    PRIMARY KEY (tele_auto_cod, neumatico_nro_serie, neumatico_nro)
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'telemetria_freno')
CREATE TABLE TELEMETRIA_CARRERA.telemetria_freno (
    tele_auto_cod INT NOT NULL,
    freno_nro_serie NVARCHAR NOT NULL REFERENCES TELEMETRIA_CARRERA.freno,
    freno_nro  NOT NULL, -- !!!
    tele_freno_tamanio_pastilla numeric(18,2) NOT NULL,
    tele_freno_posicion NVARCHAR NOT NULL,
    tele_freno_temperatura numeric(18,2) NOT NULL,
    PRIMARY KEY (tele_auto_cod, freno_nro_serie, freno_nro)
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'telemetria_caja')
CREATE TABLE TELEMETRIA_CARRERA.telemetria_caja (
    tele_auto_cod INT NOT NULL,
    caja_nro_serie NVARCHAR NOT NULL REFERENCES TELEMETRIA_CARRERA.caja,
    caja_modelo NVARCHAR NOT NULL, -- !!!
    tele_caja_temp_aceite numeric(18,2) NOT NULL,
    tele_caja_rpm numeric(18,2) NOT NULL,
    tele_caja_desgaste numeric(18,2) NOT NULL,
    PRIMARY KEY (tele_auto_cod, caja_nro_serie)
);

-- Caja
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'caja')
CREATE TABLE TELEMETRIA_CARRERA.caja (
    caja_nro_serie INT NOT NULL PRIMARY KEY,
    caja_modelo NVARCHAR NOT NULL,
    caja_desgaste numeric(18,2) NOT NULL
);


-- Motor
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'motor')
CREATE TABLE TELEMETRIA_CARRERA.motor (
    motor_nro_serie INT NOT NULL PRIMARY KEY,
    motor_modelo NVARCHAR NOT NULL
);

-- Freno
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'freno')
CREATE TABLE TELEMETRIA_CARRERA.freno (
    freno_nro_serie INT NOT NULL PRIMARY KEY,
    freno_tamanio_pastilla numeric(18,2) NOT NULL
);


-- mirar claves
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'incidente_por_auto')
CREATE TABLE TELEMETRIA_CARRERA.incidente_por_auto (
    codigo_sector  NOT NULL,
    codigo_carrera  NOT NULL,
    auto_numero INT NOT NULL,
    cod_incidente INT NOT NULL,
    id_tipo_incidente smallint NOT NULL,
    numero_vuelta numeric NOT NULL,
    PRIMARY KEY (codigo_sector, codigo_carrera, auto_numero, cod_incidente)
);


-- mirar se agregaron cosas
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'parada_box_por_auto')
CREATE TABLE TELEMETRIA_CARRERA.parada_box_por_auto (
    cod_parada_box INT NOT NULL,
    auto_numero INT NOT NULL,
    cod_escuderia INT NOT NULL,
    nro_serie_neumatico_viejo NVARCHAR NOT NULL,
    nro_serie_neumatico_nuevo NVARCHAR NULL,
    PRIMARY KEY (cod_parada_box, auto_numero, cod_escuderia)
);


IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'tipo_neumatico')
CREATE TABLE TELEMETRIA_CARRERA.tipo_neumatico (
    id_tipo_neumatico smallint NOT NULL PRIMARY KEY,
    descripcion NVARCHAR(255) NOT NULL
);


-- Tipo Sector
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'tipo_sector')
CREATE TABLE TELEMETRIA_CARRERA.tipo_sector (
    id_tipo_sector smallint NOT NULL IDENTITY PRIMARY KEY,
    descripcion NVARCHAR(255) NOT NULL
);


-- Tipo Incidente
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'tipo_incidente')
CREATE TABLE TELEMETRIA_CARRERA.tipo_incidente (
    id_tipo_incidente SMAILLINT NOT NULL IDENTITY PRIMARY KEY,
    descripcion NVARCHAR(255) NOT NULL
);


-- Pais
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'pais')
CREATE TABLE TELEMETRIA_CARRERA.pais (
    id_pais smallint NOT NULL IDENTITY PRIMARY KEY,
    nombre NVARCHAR(50) NOT NULL
);

-- Bandera
IF NOT EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'bandera')
CREATE TABLE TELEMETRIA_CARRERA.bandera (
    id_incidente_bandera smallint NOT NULL IDENTITY PRIMARY KEY,
    descripcion NVARCHAR(255) NOT NULL
);
GO


------------------- CREACION DE VISTAS -------------------
/*
IF EXISTS (SELECT [name] FROM sys.objects WHERE [name] = 'v_nombre')
DROP VIEW TELEMETRIA_CARRERA.v_nombre
GO
CREATE VIEW TELEMETRIA_CARRERA.v_nombre AS
	SELECT 
	FROM 
GO
*/


------------------- CREACION DE STORED PROCEDURES PARA MIGRACION -------------------
/*
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_nombreTabla')
	DROP PROCEDURE migrar_nombreTabla
GO

CREATE PROCEDURE migrar_nombreTabla
AS
BEGIN
    INSERT INTO 
	SELECT DISTINCT 
	FROM gd_esquema.Maestra
  END
GO
*/
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_caja')
	DROP PROCEDURE migrar_caja
GO



IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_motor')
	DROP PROCEDURE migrar_motor
GO



IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_freno')
	DROP PROCEDURE migrar_freno
GO


/*
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_neumatico')
	DROP PROCEDURE migrar_tipo_neumatico
GO

CREATE PROCEDURE migrar_tipo_neumatico 
AS
BEGIN
INSERT INTO tipo_neumatico
(id_tipo_neumatico, descripcion)
END
GO
*/

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_sector')
	DROP PROCEDURE migrar_tipo_sector
GO



/*
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_sector')
	DROP PROCEDURE migrar_sector 
GO

CREATE PROCEDURE migrar_sector 
CREATE TABLE TELEMETRIA_CARRERA.sector 
(codigo_sector, circuito_codigo, sector_distancia, id_tipo_sector)
END
GO
*/

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_incidente')
	DROP PROCEDURE migrar_tipo_incidente
GO


IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_pais')
	DROP PROCEDURE migrar_pais
GO


IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_bandera')
	DROP PROCEDURE migrar_bandera
GO



IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_escuderia')
	DROP PROCEDURE migrar_escuderia
GO



IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_piloto ')
	DROP PROCEDURE migrar_piloto 
GO



------------------- EJECUCION DE STORED PROCEDURES: MIGRACION -------------------
BEGIN TRANSACTION
BEGIN TRY
	EXECUTE migrar_nombreTabla
    EXECUTE migrar_caja
    EXECUTE migrar_motor 
    EXECUTE migrar_freno 
    EXECUTE migrar_tipo_neumatico 
    EXECUTE migrar_tipo_sector 
    EXECUTE migrar_tipo_incidente 
    EXECUTE migrar_pais 
    EXECUTE migrar_bandera 
    EXECUTE migrar_escuderia
    EXECUTE migrar_piloto
	EXECUTE migrar_carrera
	EXECUTE migrar_parada_box
	EXECUTE migrar_sector
	EXECUTE migrar_telemetria_caja
	EXECUTE migrar_telemetria_motor
	EXECUTE migrar_telemetria_neumatico
	EXECUTE migrar_telemetria_freno
	EXECUTE migrar_telemetria_auto
    -- ...
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vacías o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

IF (EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.carrera)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.circuito)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.sector)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.incidente)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.auto)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.escuderia)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.piloto)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.parada_box)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.neumatico)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.telemetria_auto)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.telemetria_motor)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.telemetria_neumatico)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.telemetria_freno)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.telemetria_caja)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.caja)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.motor)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.freno)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.incidente_por_auto)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.parada_box_por_auto)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.tipo_neumatico)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.tipo_sector)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.tipo_incidente)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.pais)
    AND EXISTS (SELECT 1 FROM TELEMETRIA_CARRERA.bandera))
BEGIN
	PRINT 'Migracion Exitosa';
	COMMIT TRANSACTION;
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
	THROW 50002, 'Hubo un error al migrar en una o mas tablas. Todos los cambios fueron deshechos, ninguna tabla fue cargada en la base.',1;
END
   

------------------- CREO INDICES -------------------
