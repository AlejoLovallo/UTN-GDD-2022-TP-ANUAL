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

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_CIRCUITO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_CIRCUITO
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

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRAR_BI_TIEMPO' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRAR_BI_TIEMPO
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
		/* CREATE TABLE GRUPO_9800.BI_tipo_incidente (
            id_tipo_incidente SMALLINT  IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );*/

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
END
GO

CREATE PROCEDURE [GRUPO_9800].CREATE_BI_TABLES
AS
BEGIN
		
		 CREATE TABLE GRUPO_9800.BI_TIEMPO(
            COD_TIEMPO INT IDENTITY PRIMARY KEY,
            ANIO INT not null,
            MES INT not null,
            DIA INT not null
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
  
        CREATE TABLE GRUPO_9800.BI_INCIDENTE (
            ID_BI_INCIDENTE INT IDENTITY PRIMARY KEY,
            CIRCUITO_CODIGO INT REFERENCES GRUPO_9800.BI_CIRCUITO,
            ID_TIPO_SECTOR smallint REFERENCES GRUPO_9800.BI_tipo_sector,
            COD_ESCUDERIA INT REFERENCES GRUPO_9800.BI_ESCUDERIA,
            CANTIDAD_INCIDENTES INT,
            COD_TIEMPO INT REFERENCES GRUPO_9800.BI_TIEMPO
        );
    
       
END
GO

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_tipo_sector
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_tipo_sector 
	SELECT * FROM GRUPO_9800.tipo_sector
END

GO

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_parada_box
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_parada_box
	SELECT * FROM GRUPO_9800.parada_box
END

GO

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_escuderia
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_escuderia
	SELECT * FROM GRUPO_9800.escuderia
END

GO

CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_circuito
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_circuito
	SELECT * FROM GRUPO_9800.circuito
END

EXEC [GRUPO_9800].CREATE_DIMENSION_TABLES
EXEC [GRUPO_9800].CREATE_BI_TABLES
EXEC [GRUPO_9800].MIGRAR_BI_tipo_sector
EXEC [GRUPO_9800].MIGRAR_BI_parada_box
EXEC [GRUPO_9800].MIGRAR_BI_circuito
EXEC [GRUPO_9800].MIGRAR_BI_escuderia

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


CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_INCIDENTE /*CAMBIAR*/
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_INCIDENTE (CIRCUITO_CODIGO,ID_TIPO_SECTOR,COD_ESCUDERIA,CANTIDAD_INCIDENTES)
    SELECT i.circuito_codigo,ts.id_tipo_sector,e.cod_escuderia,COUNT(i.cod_incidente)
    FROM GRUPO_9800.incidente i JOIN GRUPO_9800.sector s ON (i.codigo_sector = s.codigo_sector)
                                JOIN GRUPO_9800.tipo_sector ts ON (s.id_tipo_sector = ts.id_tipo_sector)
                                JOIN GRUPO_9800.incidente_por_auto ia ON (i.cod_incidente = ia.cod_incidente)
                                JOIN GRUPO_9800.escuderia e ON (ia.cod_escuderia = e.cod_escuderia)
    GROUP BY i.circuito_codigo,ts.id_tipo_sector,e.cod_escuderia
END
GO
/*
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_TIEMPO
AS
BEGIN
	DECLARE date_cursor CURSOR FOR SELECT CARRERA_FECHA FROM GRUPO_9800.CARRERA
	
	DECLARE @Date DATETIME
	DECLARE @ANIO INT
	DECLARE @Cuatrimestre INT

	OPEN date_cursor
	FETCH NEXT FRIOM date_cursor into @Date

	WHILE(@@FETCH_STATUS = 0)
	BEGIN
			SET @Anio = YEAR(@Date)
			SET @Cuatrimestre = CASE WHEN MONTH(@Date) = 1 OR MONTH(@Date) = 2  OR MONTH(@Date) = 3 OR MONTH(@Date) = 4 then 1
						 WHEN MONTH(@Date) = 5 OR MONTH(@Date) = 6  OR MONTH(@Date) = 7 OR MONTH(@Date) = 8 then 2
						 WHEN MONTH(@Date) = 9 OR MONTH(@Date) = 10 OR MONTH(@Date) = 11 OR MONTH(@Date) = 12 then 3
						 END

			IF NOT EXISTS (SELECT * FROM GRUPO_9800.BI_TIEMPO WHERE (ANIO = @Anio AND @Cuatrimestre = @Cuatrimestre))
				INSERT INTO GRUPO_9800.BI_tiempo (ANIO, CUATRIMESTRE) VALUES (@Anio, @Cuatrimestre)
			
			FETCH NEXT date_cursor into @Date
	END

	CLOSE date_cursor
	DEALLOCATE date_cursor
END
GO
*/


SELECT TOP 3 circuito_codigo,SUM(TIEMPO_PARADA_BOX) 'Tiempo consumido por circuito'
FROM GRUPO_9800.BI_paradas
GROUP BY circuito_codigo
ORDER BY MAX(SUM(TIEMPO_PARADA_BOX)) DESC

/*
Los 3 circuitos más peligrosos del año, en función mayor cantidad de 
incidentes
*/
SELECT TOP 3 circuito_codigo,anio,cantidad_incidentes
FROM GRUPO_9800.BI_incidente
JOIN GRUPO_9800.BI_tiempo ON cod_
GROUP BY circuito_codigo,ANIO
ORDER BY MAX(cantidad_incidentes) DESC


/*
Promedio de incidentes que presenta cada escudería por año en los 
distintos tipo de sectores. 
*/

SELECT AVG(cantidad_incidente) 'Promedio de incidentes',cod_escuderia,anio,id_tipo_sector
FROM GRUPO_9800.BI_incidente
GROUP BY cod_escuderia,anio,id_tipo_sector


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

