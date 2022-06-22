USE [GD1C2022]
GO

--DROP PREVENTIVO DE FUNCIONES------------------------------------------------------------
IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='FN' AND NAME = 'obtener_cuatrimestre' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP FUNCTION GRUPO_9800.obtener_cuatrimestre
GO
--DROP PREVENTIVO DE VIEWS----------------------------------------------------------------

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

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_INCIDENTE_POR_AUTO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_INCIDENTE_POR_AUTO
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_SECTOR' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_SECTOR
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_CARRERA' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_CARRERA
GO

--DROP PREVENTIVO DE PROCEDURES---------------------------------------------------------------
IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_circuito' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_circuito
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

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_CIRCUITO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_CIRCUITO
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

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_CIRCUITO_VISTAS' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_CIRCUITO_VISTAS
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

		CREATE TABLE GRUPO_9800.BI_incidente_por_auto(
			vehiculo_numero INT,
			cod_escuderia INT,
			cod_incidente INT,
			id_tipo_incidente smallint,
			numero_vuelta DECIMAL(18,0),
			PRIMARY KEY (vehiculo_numero, cod_escuderia, cod_incidente)
		);

		CREATE TABLE GRUPO_9800.BI_sector (
			codigo_sector INT,
			sector_distancia numeric(18,2),
			id_tipo_sector smallint,
			circuito_codigo INT,
			PRIMARY KEY (codigo_sector, circuito_codigo)
		);

		CREATE TABLE GRUPO_9800.BI_carrera (
			codigo_carrera INT PRIMARY KEY,
			carrera_fecha date,
			carrera_clima varchar(100),
			carrera_total_carrera numeric(18,2),
			carrera_cant_vueltas INT,
			circuito_codigo INT 
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

        CREATE TABLE GRUPO_9800.BI_CIRCUITO_VISTAS (
            ID_BI_CIRCUITO INT IDENTITY PRIMARY KEY,
            NUMERO_VUELTA NUMERIC(18,0),
            VEHICULO_NUMERO INT,
            COD_ESCUDERIA INT,
            CIRCUITO_CODIGO INT,
            MEJOR_TIEMPO_VUELTA NUMERIC(18,10),
            MAXIMO_COMBUSTIBLE_CONSUMIDO DECIMAL(18,2),
            VELOCIDAD DECIMAL(18,2),
            ID_TIPO_SECTOR smallint REFERENCES GRUPO_9800.BI_TIPO_SECTOR,
			COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO,
        );
 
        CREATE TABLE GRUPO_9800.BI_PARADAS (
            ID_BI_CIRCUITO INT IDENTITY PRIMARY KEY,
            COD_ESCUDERIA INT REFERENCES GRUPO_9800.BI_ESCUDERIA,
            CIRCUITO_CODIGO INT REFERENCES GRUPO_9800.BI_CIRCUITO,
            COD_PARADA_BOX INT REFERENCES GRUPO_9800.BI_PARADA_BOX,
            TIEMPO_PARADA_BOX NUMERIC(18,2),
            COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO
        );
  
        CREATE TABLE GRUPO_9800.BI_INCIDENTES (
            ID_BI_INCIDENTE INT IDENTITY PRIMARY KEY,
            CIRCUITO_CODIGO INT REFERENCES GRUPO_9800.BI_CIRCUITO,
            ID_TIPO_SECTOR SMALLINT,
            COD_ESCUDERIA INT REFERENCES GRUPO_9800.BI_ESCUDERIA,
            CODIGO_INCIDENTE INT,
			INCIDENTES_TOTALES_POR_ANIO_POR_ESCUDERIA INT,
            COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO
        );
    
       
END
GO

-----------------------------------------------------------------------------------------------------
-- Procedures migracion de tablas

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

-- BI Incidente_por_auto
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_incidente_por_auto
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_incidente_por_auto
	SELECT * FROM GRUPO_9800.incidente_por_auto
END
GO

-- BI Sector
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_sector
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_sector
	SELECT * FROM GRUPO_9800.sector
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
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_INCIDENTE
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_INCIDENTES (CIRCUITO_CODIGO,ID_TIPO_SECTOR,COD_ESCUDERIA,CODIGO_INCIDENTE,INCIDENTES_TOTALES_POR_ANIO_POR_ESCUDERIA,COD_TIEMPO)
    SELECT i.circuito_codigo,s.id_tipo_sector,ia.cod_escuderia,ia.cod_incidente,
	(SELECT count(inc_a.cod_incidente) 
	FROM GRUPO_9800.BI_incidente inc 
	JOIN GRUPO_9800.BI_incidente_por_auto inc_a ON inc_a.cod_incidente = inc.cod_incidente
	JOIN GRUPO_9800.BI_carrera carr ON inc.codigo_carrera = carr.codigo_carrera
	WHERE YEAR(carr.carrera_fecha) = t.anio
	AND inc_a.cod_escuderia = ia.cod_escuderia
	GROUP BY YEAR(carr.carrera_fecha),inc_a.cod_escuderia) 'Incidentes totales',
	t.cod_tiempo
	FROM GRUPO_9800.BI_circuito c
	JOIN GRUPO_9800.BI_incidente i ON c.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_incidente_por_auto ia ON i.cod_incidente = ia.cod_incidente
	JOIN GRUPO_9800.BI_sector s ON s.codigo_sector = i.codigo_sector AND s.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_carrera ca ON i.codigo_carrera = ca.codigo_carrera
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(ca.carrera_fecha) = t.anio 
    GROUP BY i.circuito_codigo,s.id_tipo_sector,ia.cod_escuderia,ia.cod_incidente, t.anio,t.cod_tiempo
END
GO

-- Migracion tabla de hechos de Circuitos vistas

CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_CIRCUITO_VISTAS
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_CIRCUITO_VISTAS (COD_ESCUDERIA,CIRCUITO_CODIGO,VEHICULO_NUMERO,MEJOR_TIEMPO_VUELTA,MAXIMO_COMBUSTIBLE_CONSUMIDO,VELOCIDAD,ID_TIPO_SECTOR,COD_TIEMPO)
	SELECT tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,
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
	AND tele.codigo_sector = se.codigo_sector 
	GROUP BY ta.vehiculo_numero,ta.cod_escuderia,se.id_tipo_sector) 'Maxima velocidad alcanzada por escuderia, por tipo de sector',
	s.id_tipo_sector,
	t.cod_tiempo
	FROM GRUPO_9800.telemetria_auto tele
	JOIN GRUPO_9800.sector s ON tele.codigo_sector = s.codigo_sector
	JOIN GRUPO_9800.carrera c ON c.codigo_carrera = tele.codigo_carrera
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(c.carrera_fecha) = t.anio 
	GROUP BY tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,s.id_tipo_sector,tele.codigo_sector,t.cod_tiempo
	ORDER BY cod_escuderia,circuito_codigo
	
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
EXEC [GRUPO_9800].MIGRAR_BI_incidente_por_auto
EXEC [GRUPO_9800].MIGRAR_BI_sector
EXEC [GRUPO_9800].MIGRAR_BI_carrera
EXEC [GRUPO_9800].MIGRAR_BI_TIEMPO
EXEC [GRUPO_9800].MIGRATE_BI_INCIDENTE
EXEC [GRUPO_9800].MIGRATE_BI_CIRCUITO_VISTAS
EXEC [GRUPO_9800].MIGRATE_BI_PARADAS
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

	SELECT TOP 3 i.circuito_codigo,t.anio,COUNT(DISTINCT codigo_incidente) 'Cantidad de incidentes por anio'
	FROM GRUPO_9800.BI_incidentes i
	JOIN GRUPO_9800.BI_TIEMPO t ON t.cod_tiempo = i.cod_tiempo 
	--WHERE t.anio = YEAR(getdate()) -- ACLARAR EN ESTRATEGIA
	GROUP BY i.circuito_codigo,t.ANIO
GO
/*
Promedio de incidentes que presenta cada escudería por año en los 
distintos tipo de sectores. 
*/

-- OK 
CREATE VIEW GRUPO_9800.promedioIncidentesPorEscuderiaXanio
AS
	SELECT  COUNT(i.codigo_incidente) / i.incidentes_totales_por_anio_por_escuderia 'Promedio de incidentes',i.cod_escuderia,t.anio,i.id_tipo_sector
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
	GROUP BY circuito_codigo

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
/*
SELECT desgaste_neumatico,desgaste_freno,desgate_caja,desgaste_motor,vehiculo_numero,cod_escuderia,numero_vuelta,circuito_codigo
FROM GRUPO_9800.BI_circuito
GROUP BY desgaste_neumatico,desgaste_freno,desgate_caja,desgaste_motor,vehiculo_numero,cod_escuderia,numero_vuelta,circuito_codigo

*/