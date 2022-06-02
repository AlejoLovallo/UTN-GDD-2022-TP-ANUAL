USE [master]
GO
------------------- CREO BASE DE DATOS -------------------
USE [TELEMETRIA_CARRERA]
-- DROP DATABASE TELEMETRIA_CARRERA;
CREATE DATABASE TELEMETRIA_CARRERA;
GO
------------------- CREACION DE TABLAS -------------------
EXEC CREATE_MASTER_TABLES
EXEC CREATE_TRANSACTIONAL_TABLES


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

BEGIN
	PRINT 'Migracion Exitosa';
	COMMIT TRANSACTION;
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
	THROW 50002, 'Hubo un error al migrar en una o mas tablas. Todos los cambios fueron deshechos, ninguna tabla fue cargada en la base.',1;
END
   

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
