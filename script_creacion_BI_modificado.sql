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

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_tipo_sector' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_tipo_sector
GO

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

-----------------------------------------------------------------------------------------------------
-- Creacion de tablas dimensionales

CREATE PROCEDURE [GRUPO_9800].CREATE_DIMENSION_TABLES
AS
BEGIN

		CREATE TABLE GRUPO_9800.BI_piloto (
            cod_piloto INT PRIMARY KEY,
            piloto_nombre NVARCHAR(50) ,
            piloto_apellido NVARCHAR(50) ,
            piloto_nacionalidad NVARCHAR(50) ,
            piloto_fecha_nacimiento DATETIME 
        );
	
		CREATE TABLE GRUPO_9800.BI_tipo_neumatico (
			id_tipo_neumatico smallint PRIMARY KEY,
			detalle nvarchar(255)
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
            circuito_nombre NVARCHAR(255)  ,
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

------------------------------------------------------------------------------------------
-- Procedure creacion de tablas de hechos

CREATE PROCEDURE [GRUPO_9800].CREATE_BI_TABLES
AS
BEGIN
		
		
		CREATE TABLE GRUPO_9800.BI_fact_table_telemetria(
            circuito_codigo INT,
			cod_escuderia INT,
			vehiculo_numero INT,
			id_tipo_sector SMALLINT,
			cod_tiempo INT REFERENCES GRUPO_9800.BI_tiempo,
			cantidad_de_vueltas INT ,
			desgaste_caja_promedio DECIMAL(18,6),
			potencia_motor_promedio NUMERIC(18,6),
			desgaste_freno_promedio DECIMAL(18,6),
			desgaste_neumatico_promedio DECIMAL(18,6),
			consumo_combustible_promedio DECIMAL(18,6),
			mejor_tiempo_de_vuelta NUMERIC(18,10),
			maxima_velocidad_alcanzada DECIMAL(18,6)
			PRIMARY KEY(circuito_codigo,cod_escuderia,vehiculo_numero,id_tipo_sector,cod_tiempo),
			--Ver si van como FK
		)
 
        CREATE TABLE GRUPO_9800.BI_fact_table_paradas_de_box(
            cod_escuderia INT REFERENCES GRUPO_9800.BI_escuderia,
            circuito_codigo INT REFERENCES GRUPO_9800.BI_circuito,
            cod_tiempo INT,
            cantidad_de_paradas INT,
            tiempo_consumido_parada_box DECIMAL(18,2),
			tiempo_promedio_parada_box DECIMAL(18,2)
			PRIMARY KEY(cod_escuderia,circuito_codigo,cod_tiempo)
		);

		 CREATE TABLE GRUPO_9800.BI_fact_table_incidentes( 
			circuito_codigo INT REFERENCES GRUPO_9800.BI_circuito,
            id_tipo_sector SMALLINT REFERENCES GRUPO_9800.BI_tipo_sector,
			cod_escuderia INT REFERENCES GRUPO_9800.BI_escuderia,
			cod_tiempo INT,
            incidentes_totales INT,
			PRIMARY KEY(circuito_codigo,id_tipo_sector,cod_escuderia,cod_tiempo)
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
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_piloto
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_piloto
	SELECT * FROM GRUPO_9800.piloto
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


/*MIGRACIÓN*/


-- Migracion fact table desgaste

CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_telemetria
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_fact_table_telemetria (circuito_codigo,cod_escuderia,vehiculo_numero,id_tipo_sector,cod_tiempo,cantidad_de_vueltas,
											desgaste_caja_promedio,potencia_motor_promedio,desgaste_neumatico_promedio,desgaste_freno_promedio,
											consumo_combustible_promedio,mejor_tiempo_de_vuelta,maxima_velocidad_alcanzada)
	SELECT tele.circuito_codigo,tele.cod_escuderia,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo,COUNT(DISTINCT tele.tele_auto_numero_vuelta),
	(SELECT MAX(tele_c.tele_caja_desgaste) - MIN(tele_c.tele_caja_desgaste) 
									FROM GRUPO_9800.telemetria_caja tele_c 
									JOIN GRUPO_9800.telemetria_auto tele_a ON tele_c.tele_auto_cod = tele_a.tele_auto_cod
									JOIN GRUPO_9800.BI_TIEMPO ti ON YEAR(tele_a.tele_fecha) = ti.anio  AND GRUPO_9800.obtener_cuatrimestre(tele_a.tele_fecha) = ti.cuatrimestre
									WHERE tele_a.vehiculo_numero = tele.vehiculo_numero
									AND tele_a.cod_escuderia = tele.cod_escuderia
									AND tele_a.circuito_codigo = tele.circuito_codigo
									GROUP BY tele_a.vehiculo_numero,tele_a.cod_escuderia,tele_a.circuito_codigo,ti.cod_tiempo),
	(SELECT MAX(tele_m.tele_motor_potencia) - MIN(tele_m.tele_motor_potencia) 
									FROM GRUPO_9800.telemetria_motor tele_m 
									JOIN GRUPO_9800.telemetria_auto tele_a ON tele_m.tele_auto_cod=tele_a.tele_auto_cod
									JOIN GRUPO_9800.BI_TIEMPO ti ON YEAR(tele_a.tele_fecha) = ti.anio  AND GRUPO_9800.obtener_cuatrimestre(tele_a.tele_fecha) = ti.cuatrimestre
									WHERE tele_a.vehiculo_numero = tele.vehiculo_numero
									AND tele_a.cod_escuderia = tele.cod_escuderia
									AND tele_a.circuito_codigo = tele.circuito_codigo
									GROUP BY tele_a.vehiculo_numero,tele_a.cod_escuderia,tele_a.circuito_codigo,ti.cod_tiempo),
	(SELECT SUM([desgaste])/COUNT(*) FROM 
							(SELECT [neumatico], ( SUM([maximo]) - SUM([minimo])) [desgaste] FROM (
							SELECT neumatico_nro_serie[neumatico],MAX(tele_neumatico_profundidad) [maximo], MIN (tele_neumatico_profundidad) [minimo] 
							FROM GRUPO_9800.telemetria_neumatico
							GROUP BY neumatico_nro_serie) as asd GROUP BY [neumatico]) as neumaticos_desgaste
	JOIN GRUPO_9800.telemetria_neumatico tele_n ON [neumatico] = neumatico_nro_serie
	JOIN GRUPO_9800.telemetria_auto tele_a ON tele_n.tele_auto_cod=tele_a.tele_auto_cod
	JOIN GRUPO_9800.BI_TIEMPO ti ON YEAR(tele_a.tele_fecha) = ti.anio  AND GRUPO_9800.obtener_cuatrimestre(tele_a.tele_fecha) = ti.cuatrimestre
	WHERE tele_a.vehiculo_numero = tele.vehiculo_numero
	AND tele_a.cod_escuderia = tele.cod_escuderia
	AND tele_a.circuito_codigo = tele.circuito_codigo
	GROUP BY tele_a.vehiculo_numero,tele_a.cod_escuderia,tele_a.circuito_codigo,ti.cod_tiempo) ,
	--MAX(tn.tele_neumatico_profundidad) - MIN(tn.tele_neumatico_profundidad) ,
	(SELECT SUM([desgaste])/COUNT(*) FROM 
							(SELECT [freno], ( SUM([maximo]) - SUM([minimo])) [desgaste] FROM (
							SELECT freno_nro_serie [freno],MAX(tele_freno_grosor_pastilla) [maximo], MIN (tele_freno_grosor_pastilla) [minimo] 
							FROM GRUPO_9800.telemetria_freno GROUP BY freno_nro_serie) as asd GROUP BY [freno]) as frenos_desgaste
	JOIN GRUPO_9800.telemetria_freno tele_n ON [freno] = freno_nro_serie
	JOIN GRUPO_9800.telemetria_auto tele_a ON tele_n.tele_auto_cod=tele_a.tele_auto_cod
	JOIN GRUPO_9800.BI_TIEMPO ti ON YEAR(tele_a.tele_fecha) = ti.anio  AND GRUPO_9800.obtener_cuatrimestre(tele_a.tele_fecha) = ti.cuatrimestre
	WHERE tele_a.vehiculo_numero = tele.vehiculo_numero
	AND tele_a.cod_escuderia = tele.cod_escuderia
	AND tele_a.circuito_codigo = tele.circuito_codigo
	GROUP BY tele_a.vehiculo_numero,tele_a.cod_escuderia,tele_a.circuito_codigo,ti.cod_tiempo) ,
	AVG(tele.tele_auto_combustible) 'Combustible promedio utilizado',
	MIN(tele.tele_auto_tiempo_vuelta) 'Minimo tiempo de vuelta por escuderia',
	MAX(tele.tele_auto_velocidad) 'Velocidad maxima'
	FROM GRUPO_9800.telemetria_auto tele
	JOIN GRUPO_9800.telemetria_neumatico tn ON tele.tele_auto_cod = tn.tele_auto_cod
	JOIN GRUPO_9800.telemetria_freno tf ON tele.tele_auto_cod = tf.tele_auto_cod
	JOIN GRUPO_9800.telemetria_motor tm ON tele.tele_auto_cod = tm.tele_auto_cod
	JOIN GRUPO_9800.telemetria_caja tc ON tele.tele_auto_cod = tc.tele_auto_cod
	JOIN GRUPO_9800.sector s ON tele.codigo_sector = s.codigo_sector
	JOIN GRUPO_9800.carrera ca ON ca.codigo_carrera = tele.codigo_carrera
	JOIN GRUPO_9800.BI_vehiculo v ON tele.vehiculo_numero = v.vehiculo_numero AND tele.cod_escuderia = v.cod_escuderia
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(tele.tele_fecha) = t.anio  AND GRUPO_9800.obtener_cuatrimestre(tele.tele_fecha) = t.cuatrimestre
	WHERE tele.tele_auto_tiempo_vuelta <> 0 
	GROUP BY tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo

END
GO


/*

select t.cod_escuderia,t.circuito_codigo,t.vehiculo_numero 
from GRUPO_9800.telemetria_auto t
JOIN GRUPO_9800.telemetria_neumatico tn ON t.tele_auto_cod = tn.tele_auto_cod
GROUP BY t.cod_escuderia,t.circuito_codigo,t.vehiculo_numero
HAVING COUNT(tn.neumatico_nro_serie) > 1


select * from GRUPO_9800.escuderia

select * from GRUPO_9800.bi_fact_table_telemetria WHERE circuito_codigo = 1 AND vehiculo_numero = 1 AND cod_escuderia = 8


SELECT (SUM([A]) - SUM([B])) / COUNT(*) / 21
FROM (select neumatico_nro_serie,MAX(tele_neumatico_profundidad)[A], min(tele_neumatico_profundidad) [B] 
from GRUPO_9800.telemetria_neumatico 
WHERE neumatico_nro_serie = 'YOJ925683' 
OR neumatico_nro_serie ='JAB945083' 
OR neumatico_nro_serie ='XAG841367' 
OR neumatico_nro_serie = 'UXG549123' 
GROUP BY neumatico_nro_serie) AS b

SELECT MAX(tm.tele_motor_potencia) - MIN(tm.tele_motor_potencia)
FROM GRUPO_9800.telemetria_motor tm
JOIN GRUPO_9800.telemetria_auto t ON t.tele_auto_cod = tm.tele_auto_cod 
WHERE t.circuito_codigo = 1
AND t.cod_escuderia = 8
AND t.vehiculo_numero = 1
GROUP BY t.circuito_codigo,
 t.cod_escuderia 
 ,t.vehiculo_numero 
*/
-- Migracion fact table desgaste
/*
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_telemetria
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
*/


-- Migracion fact table paradas de box
go
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_paradas_de_box --LISTO
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_fact_table_paradas_de_box (cod_escuderia,circuito_codigo,cod_tiempo,cantidad_de_paradas,tiempo_consumido_parada_box) 
	SELECT pbv.cod_escuderia, 
	ca.circuito_codigo,
	t.cod_tiempo,
	COUNT(DISTINCT pb.cod_parada_box) 'Cantidad de paradas de box',
	SUM(pb.parada_box_tiempo)/COUNT(pbv.cod_parada_box) 'Tiempo consumido en parada de box'
	FROM GRUPO_9800.parada_box pb 
    JOIN GRUPO_9800.carrera ca ON (pb.codigo_carrera = ca.codigo_carrera)
	JOIN GRUPO_9800.parada_box_por_vehiculo pbv ON pbv.cod_parada_box = pb.cod_parada_box
	JOIN GRUPO_9800.BI_tiempo t ON YEAR(ca.carrera_fecha) = t.anio AND GRUPO_9800.obtener_cuatrimestre(ca.carrera_fecha) = t.cuatrimestre
	GROUP BY cod_escuderia,ca.circuito_codigo,t.cod_tiempo
	order by circuito_codigo
END
/*
select * 
from GRUPO_9800.parada_box	p
JOIN GRUPO_9800.carrera c ON p.codigo_carrera = c.codigo_carrera

ORDER BY circuito_codigo
*/
-- Migracion fact table incidentes
GO
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_incidentes
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_fact_table_incidentes (circuito_codigo,id_tipo_sector,cod_escuderia,cod_tiempo,incidentes_totales)
    SELECT i.circuito_codigo,
	ts.id_tipo_sector,
	e.cod_escuderia,
	t.cod_tiempo,
	COUNT(ia.cod_incidente) 'Incidentes totales'
	FROM GRUPO_9800.BI_circuito c
	JOIN GRUPO_9800.incidente i ON c.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.incidente_por_auto ia ON i.cod_incidente = ia.cod_incidente
	JOIN GRUPO_9800.BI_escuderia e ON e.cod_escuderia = ia.cod_escuderia 
	JOIN GRUPO_9800.sector s ON s.codigo_sector = i.codigo_sector AND s.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_tipo_sector ts ON s.id_tipo_sector = ts.id_tipo_sector 
	JOIN GRUPO_9800.carrera ca ON i.codigo_carrera = ca.codigo_carrera
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(ca.carrera_fecha) = t.anio AND GRUPO_9800.obtener_cuatrimestre(ca.carrera_fecha) = t.cuatrimestre
    GROUP BY i.circuito_codigo,ts.id_tipo_sector,e.cod_escuderia,t.cod_tiempo
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
-- Ejecuto creacion de tablas

EXEC [GRUPO_9800].CREATE_DIMENSION_TABLES
EXEC [GRUPO_9800].CREATE_BI_TABLES
EXEC [GRUPO_9800].MIGRAR_BI_tipo_sector
EXEC [GRUPO_9800].MIGRAR_BI_circuito
EXEC [GRUPO_9800].MIGRAR_BI_escuderia
EXEC [GRUPO_9800].MIGRAR_BI_vehiculo
EXEC [GRUPO_9800].MIGRAR_BI_tipo_incidente
EXEC [GRUPO_9800].MIGRAR_BI_tipo_neumatico
EXEC [GRUPO_9800].MIGRAR_BI_piloto
EXEC [GRUPO_9800].MIGRAR_BI_tiempo
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_telemetria
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_paradas_de_box
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_incidentes



-----------------------------------------------------------------------------------------------------------------------
-- Ejecuto procedures de tabla de hechos



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
	SELECT cod_escuderia,t.anio, SUM(incidentes_totales) / COUNT(*) 'Promedio de incidentes'
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
	SELECT cod_escuderia,cod_tiempo,AVG(p.tiempo_consumido_parada_box) 'Tiempo promedio en paradas de box'
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
SELECT SUM(p.parada_box_tiempo) 
FROM GRUPO_9800.parada_box p 
JOIN GRUPO_9800.parada_box_por_vehiculo pv ON pv.cod_parada_box=p.cod_parada_box 
JOIN GRUPO_9800.carrera ca ON p.codigo_carrera = ca.codigo_carrera GROUP BY ca.circuito_codigo

SELECT ca.circuito_codigo,sum(p.parada_box_tiempo)
FROM GRUPO_9800.parada_box p 
JOIN GRUPO_9800.carrera ca ON p.codigo_carrera = ca.codigo_carrera 
GROUP BY ca.circuito_codigo
*/

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
	SELECT TOP 3 circuito_codigo,AVG(consumo_combustible_promedio) 'Consumo combustible promedio'
	FROM GRUPO_9800.BI_fact_table_telemetria
	GROUP BY circuito_codigo


-- Mejor tiempo de vuelta de cada escudería por circuito por año. 
-- El mejor tiempo está dado por el mínimo tiempo en que un auto logra 
-- realizar una vuelta de un circuito.

-- OK

GO
CREATE VIEW GRUPO_9800.mejorTiempoDeVuelta
AS
	SELECT cod_escuderia,circuito_codigo,t.anio,MIN(mejor_tiempo_de_vuelta) 'Minimo tiempo de vuelta'
	FROM GRUPO_9800.BI_fact_table_telemetria ft
	JOIN GRUPO_9800.BI_TIEMPO t ON t.COD_TIEMPO = ft.COD_TIEMPO
	GROUP BY cod_escuderia,circuito_codigo,t.anio

--Hay que ver porque los tipos de sector del 1 y el 2 me dan lo mismo


--Desgaste promedio de cada componente de cada auto por vuelta por 
--circuito. 
--Tener en cuenta que, para el cálculo del desgaste de los neumáticos, se 
--toma la diferencia de mm del mismo entre la medición inicial y final de 
--cada vuelta. Lo mismo aplica para el desgaste de frenos. 
--Para el cálculo del desgaste del motor se toma en cuenta la perdida de 
--potencia. 
/*

GO
CREATE VIEW GRUPO_9800.desgasteDeComponentePorVuelta
AS
SELECT vehiculo_numero,cod_escuderia,circuito_codigo,

desgaste_neumatico_promedio / cantidad_de_vueltas 'Desgaste promedio de la neumatico por vuelta por circuito',
desgaste_freno_promedio / cantidad_de_vueltas 'Desgaste promedio del freno por auto por vuelta por circuito' 
FROM GRUPO_9800.BI_fact_table_telemetria
GROUP BY vehiculo_numero,cod_escuderia,circuito_codigo
order by circuito_codigo

GO

*/

SELECT vehiculo_numero,cod_escuderia,circuito_codigo,
SUM(desgaste_caja_promedio / cantidad_de_vueltas)/ (COUNT(*))  'Desgaste promedio de la caja por auto por vuelta por circuito',
SUM(potencia_motor_promedio / cantidad_de_vueltas)/ (COUNT(*))'Desgaste promedio del motor por auto por vuelta por circuito',
SUM(desgaste_neumatico_promedio/cantidad_de_vueltas) / (COUNT(*)) 'Desgaste promedio de la neumatico por vuelta por circuito',
SUM(desgaste_freno_promedio/cantidad_de_vueltas) /(COUNT(*))'Desgaste promedio del freno por auto por vuelta por circuito' 
FROM GRUPO_9800.BI_fact_table_telemetria
GROUP BY vehiculo_numero,cod_escuderia,circuito_codigo
order by circuito_codigo,vehiculo_numero,cod_escuderia

/*
select sum(desgaste_neumatico_promedio)/21

FROM GRUPO_9800.BI_fact_table_telemetria

WHERE cod_escuderia = 8 AND circuito_codigo = 1
group by vehiculo_numero,circuito_codigo,cod_escuderia*/