USE [GD1C2022]
GO

--DROP PREVENTIVO DE FUNCIONES------------------------------------------------------------


--DROP PREVENTIVO DE TABLAS------------------------------------------------------------

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

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_BI_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.CREATE_BI_TABLES
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'CREATE_DIMENSION_TABLES' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.CREATE_DIMENSION_TABLES
GO



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
            DESGASTE_NEUMATICO NUMERIC(18,6),
            DESGASTE_FRENO DECIMAL(18,2),
            DESGASTE_CAJA NUMERIC(18,2),
            POTENCIA_MOTOR NUMERIC(18,6),
            VEHICULO_NUMERO INT,
            COD_ESCUDERIA INT,
            CIRCUITO_CODIGO INT,
            TIEMPO_VUELTA NUMERIC(18,10),
            COMBUSTIBLE_CONSUMIDO DECIMAL(18,2),
            VELOCIDAD DECIMAL(18,2),
            ID_TIPO_SECTOR smallint REFERENCES GRUPO_9800.BI_TIPO_SECTOR
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
            DESCRIPCION_SECTOR NVARCHAR(255),
            COD_ESCUDERIA INT REFERENCES GRUPO_9800.BI_ESCUDERIA,
            CODIGO_INCIDENTE INT,
			INCIDENTES_TOTALES INT,
            COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO
        );
    
       
END
GO

-- BI incidente
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_incidente
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_incidente
	SELECT * FROM GRUPO_9800.incidente
END
GO

-- BI tipo de sector
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_tipo_sector
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_tipo_sector 
	SELECT * FROM GRUPO_9800.tipo_sector
END
GO
-- BI parada de box
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_parada_box
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_parada_box
	SELECT * FROM GRUPO_9800.parada_box
END
GO
-- BI escuderia
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_escuderia
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_escuderia
	SELECT * FROM GRUPO_9800.escuderia
END
GO
-- BI circuito
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_circuito
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_circuito
	SELECT * FROM GRUPO_9800.circuito
END
GO

-- BI incidente_por_auto
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_incidente_por_auto
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_incidente_por_auto
	SELECT * FROM GRUPO_9800.incidente_por_auto
END
GO

-- BI sector
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_sector
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_sector
	SELECT * FROM GRUPO_9800.sector
END
GO
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_carrera
AS 
BEGIN
	INSERT INTO GRUPO_9800.BI_carrera
	SELECT * FROM GRUPO_9800.carrera
END
GO

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


/*MIGRACIÓN*/
/*
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_CIRCUITO --CAMBIAR/COMPLETAR
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_CIRCUITO (NUMERO_VUELTA,DESGASTE_NEUMATICO,DESGASTE_FRENO,POTENCIA_MOTOR,
                                        VEHICULO_NUMERO,COD_ESCUDERIA,CIRCUITO_CODIGO,TIEMPO_VUELTA,
                                        COMBUSTIBLE_CONSUMIDO,VELOCIDAD,ID_TIPO_SECTOR)
    SELECT 


    FROM GRUPO_9800.telemetria_auto ta JOIN 
                                        
END

GO
*/
    
/*
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_PARADAS --LISTO
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_PARADAS (COD_ESCUDERIA,CIRCUITO_CODIGO,COD_PARADA_BOX,TIEMPO_PARADA_BOX)
    SELECT e.cod_escuderia, ci.circuito_codigo, pbv.cod_parada_box,pb.parada_box_tiempo
    FROM GRUPO_9800.parada_box_por_vehiculo pbv JOIN GRUPO_9800.parada_box pb ON (pbv.cod_parada_box = pb.cod_parada_box)
                                             JOIN GRUPO_9800.escuderia e ON (pbv.cod_escuderia = e.cod_escuderia)
                                             JOIN GRUPO_9800.carrera ca ON (pb.codigo_carrera = ca.codigo_carrera)
                                             JOIN GRUPO_9800.circuito ci ON (ca.circuito_codigo = ci.circuito_codigo)
END
    GO
*/
SELECT CIRCUITO_CODIGO,INCIDENTE_TIPO,ESCUDERIA_NACIONALIDAD,ESCUDERIA_NOMBRE FROM gd_esquema.Maestra ORDER BY ESCUDERIA_NOMBRE

/*
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_INCIDENTE /*CAMBIAR*/
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_INCIDENTE (CIRCUITO_CODIGO,ID_TIPO_SECTOR,COD_ESCUDERIA,CANTIDAD_INCIDENTES)
    SELECT i.circuito_codigo,ts.id_tipo_sector,e.cod_escuderia,(SELECT COUNT(bi.cod_incidente) FROM GRUPO_9800.bi_incidente bi WHERE i.circuito_codigo = bi.circuito_codigo AND ia.cod_escuderia = bi.cod_escuderia)  
    FROM GRUPO_9800.BI_incidente i JOIN GRUPO_9800.BI_tipo_sector s ON (i.codigo_sector = s.codigo_sector)
                                JOIN GRUPO_9800.BI_tipo_sector ts ON (s.id_tipo_sector = ts.id_tipo_sector)
                                JOIN GRUPO_9800.BI_incidente_por_auto ia ON (i.cod_incidente = ia.cod_incidente)
                                JOIN GRUPO_9800.BI_escuderia e ON (ia.cod_escuderia = e.cod_escuderia)
    --GROUP BY i.circuito_codigo,ts.id_tipo_sector,e.cod_escuderia
END
GO*/
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_INCIDENTE /*CAMBIAR*/
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_INCIDENTES (CIRCUITO_CODIGO,DESCRIPCION_SECTOR,COD_ESCUDERIA,CODIGO_INCIDENTE,INCIDENTES_TOTALES,COD_TIEMPO)
    SELECT i.circuito_codigo,ts.descripcion,ia.cod_escuderia,ia.cod_incidente,
	(SELECT count(cod_incidente) from GRUPO_9800.BI_incidente_por_auto) 'Incidentes totales',
	t.cod_tiempo
	FROM GRUPO_9800.BI_circuito c
	JOIN GRUPO_9800.BI_incidente i ON c.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_incidente_por_auto ia ON i.cod_incidente = ia.cod_incidente
	JOIN GRUPO_9800.BI_sector s ON s.codigo_sector = i.codigo_sector AND s.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_tipo_sector ts ON ts.id_tipo_sector = s.id_tipo_sector
	JOIN GRUPO_9800.BI_carrera ca ON i.codigo_carrera = ca.codigo_carrera
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(ca.carrera_fecha) = t.anio 
    GROUP BY i.circuito_codigo,ts.descripcion,ia.cod_escuderia,ia.cod_incidente, t.cod_tiempo
END
GO
EXEC [GRUPO_9800].MIGRATE_BI_incidente


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
			SET @Cuatrimestre = CASE WHEN MONTH(@Date) = 1 OR MONTH(@Date) = 2  OR MONTH(@Date) = 3 OR MONTH(@Date) = 4 then 1
						 WHEN MONTH(@Date) = 5 OR MONTH(@Date) = 6  OR MONTH(@Date) = 7 OR MONTH(@Date) = 8 then 2
						 WHEN MONTH(@Date) = 9 OR MONTH(@Date) = 10 OR MONTH(@Date) = 11 OR MONTH(@Date) = 12 then 3
						 END

			IF NOT EXISTS (SELECT * FROM GRUPO_9800.BI_TIEMPO WHERE (ANIO = @Anio AND @Cuatrimestre = @Cuatrimestre))
				INSERT INTO GRUPO_9800.BI_tiempo (ANIO, CUATRIMESTRE) VALUES (@Anio, @Cuatrimestre)
			
			FETCH NEXT FROM date_cursor into @Date
	END

	CLOSE date_cursor
	DEALLOCATE date_cursor
END
GO

EXEC [GRUPO_9800].MIGRAR_BI_TIEMPO



SELECT TOP 3 circuito_codigo,SUM(TIEMPO_PARADA_BOX) 'Tiempo consumido por circuito'
FROM GRUPO_9800.BI_paradas
GROUP BY circuito_codigo
ORDER BY MAX(SUM(TIEMPO_PARADA_BOX)) DESC

/*
Los 3 circuitos más peligrosos del año, en función mayor cantidad de 
incidentes
*/

--Hay que cambiarla, no se me ocurre como agrupar los top 3 por grupo
SELECT TOP 3 circuito_codigo,anio,cantidad_incidentes 'Cantidad de incidentes por anio'
FROM GRUPO_9800.BI_incidentes i
JOIN GRUPO_9800.BI_TIEMPO t ON t.cod_tiempo = i.cod_tiempo 
WHERE t.anio = YEAR(getdate()) -- ACLARAR EN ESTRATEGIA
GROUP BY i.circuito_codigo,t.ANIO
ORDER BY MAX(3) DESC


WITH TOPTHREE AS (
    SELECT i.circuito_codigo,t.anio,COUNT(i.codigo_incidente) 'Cantidad de incidentes por anio', ROW_NUMBER() 
    over (
        PARTITION BY i.circuito_codigo,t.ANIO
        order by MAX(3)
    ) AS RowNo 
    FROM GRUPO_9800.BI_incidentes i
	JOIN GRUPO_9800.BI_TIEMPO t ON t.cod_tiempo = i.cod_tiempo 
	GROUP BY i.circuito_codigo,t.anio
)
SELECT * FROM TOPTHREE WHERE RowNo <= 3


/*
Promedio de incidentes que presenta cada escudería por año en los 
distintos tipo de sectores. 
*/
-- ACLARAR EN ESTRATEGIA QUE POR PROMEDIO DE INCIDENTES SE ENTIENDE LA CANTIDAD DE INCIDENTES POR ANIO. NO TIENE SENTIDO HACER UN PROMEDIO POR ANIO POR ESCUDERIA, TE DA LA CANTIDAD.
SELECT * FROM GRUPO_9800.incidente

-- Quedo feo, pero asi anda
-- De alguna manera hay que hacer un AVG del count de codigo_incidente
SELECT  COUNT(i.codigo_incidente)
 'Promedio de incidentes',i.cod_escuderia,t.anio,i.descripcion_sector
FROM GRUPO_9800.BI_incidentes i
JOIN GRUPO_9800.BI_TIEMPO t ON t.cod_tiempo = i.cod_tiempo 
GROUP BY i.cod_escuderia,t.anio,i.descripcion_sector


/*
Cantidad de paradas por circuito por escudería por año.
*/
SELECT COUNT(cod_parada_box) 'Cantidad de paradas',circuito_codigo,cod_escuderia,anio
FROM GRUPO_9800.BI_paradas
GROUP BY circuito_codigo,cod_escuderia,anio

/*
Tiempo promedio que tardó cada escudería en las paradas por cuatrimestre.
*/

SELECT AVG(tiempo_parada_box) 'Tiempo promedio en parada de box',cod_escuderia,cuatrimestre
FROM GRUPO_9800.BI_paradas
GROUP BY cod_escuderia,cuatrimestre

/*
Máxima velocidad alcanzada por cada auto en cada tipo de sector de cada 
circuito.
*/ 


SELECT MAX(velocidad) 'Maxima velocidad alcanzada', cod_auto, id_tipo_sector, cod_circuito
FROM GRUPO_9800.BI_circuito
GROUP BY cod_auto,id_tipo_sector,cod_circuito

/*
Los 3 de circuitos con mayor consumo de combustible promedio
*/

SELECT TOP 3 cod_circuito, AVG(combustible_consumido)
FROM GRUPO_9800.BI_circuito
GROUP BY cod_circuito
ORDER BY 2 DESC

/*
 Mejor tiempo de vuelta de cada escudería por circuito por año. 
El mejor tiempo está dado por el mínimo tiempo en que un auto logra 
realizar una vuelta de un circuito.
*/

SELECT MIN(tiempo_vuelta) 'Minimo tiempo de vuelta',cod_escuderia,circuito_codigo,anio
FROM GRUPO_9800.BI_circuito
GROUP BY cod_escuderia,circuito_codigo,anio


/*
Desgaste promedio de cada componente de cada auto por vuelta por 
circuito. 
Tener en cuenta que, para el cálculo del desgaste de los neumáticos, se 
toma la diferencia de mm del mismo entre la medición inicial y final de 
cada vuelta. Lo mismo aplica para el desgaste de frenos. 
Para el cálculo del desgaste del motor se toma en cuenta la perdida de 
potencia. 
*/

SELECT desgaste_neumatico,desgaste_freno,desgate_caja,desgaste_motor,vehiculo_numero,cod_escuderia,numero_vuelta,circuito_codigo
FROM GRUPO_9800.BI_circuito
GROUP BY desgaste_neumatico,desgaste_freno,desgate_caja,desgaste_motor,vehiculo_numero,cod_escuderia,numero_vuelta,circuito_codigo

