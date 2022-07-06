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

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_fact_table_1' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_fact_table_1
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_fact_table_2' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_fact_table_2
GO

IF EXISTS (SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='U' AND NAME = 'BI_fact_table_3' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
	DROP TABLE GRUPO_9800.BI_fact_table_3
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
IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_fact_table_1' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_fact_table_1
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_fact_table_2' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_fact_table_2
GO

IF EXISTS(SELECT SCHEMA_NAME (SCHEMA_ID), NAME FROM SYS.objects WHERE TYPE ='P' AND NAME = 'MIGRATE_BI_fact_table_3' AND SCHEMA_NAME(SCHEMA_ID) = 'GRUPO_9800')
DROP PROCEDURE  GRUPO_9800.MIGRATE_BI_fact_table_3
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
		
		
		CREATE TABLE GRUPO_9800.BI_fact_table_1(
            circuito_codigo INT,
			cod_escuderia INT,
			vehiculo_numero INT,
			id_tipo_sector SMALLINT,
			cod_tiempo INT REFERENCES GRUPO_9800.BI_tiempo,
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
 
        CREATE TABLE GRUPO_9800.BI_fact_table_2(
            cod_escuderia INT REFERENCES GRUPO_9800.BI_escuderia,
            circuito_codigo INT REFERENCES GRUPO_9800.BI_circuito,
            cod_tiempo INT,
            cantidad_de_paradas INT,
            tiempo_consumido_parada_box DECIMAL(18,2),
			tiempo_promedio_parada_box DECIMAL(18,2)
			PRIMARY KEY(cod_escuderia,circuito_codigo,cod_tiempo)
		);

		 CREATE TABLE GRUPO_9800.BI_fact_table_3( 
			circuito_codigo INT REFERENCES GRUPO_9800.BI_circuito,
            id_tipo_sector SMALLINT REFERENCES GRUPO_9800.BI_tipo_sector,
			cod_escuderia INT REFERENCES GRUPO_9800.BI_escuderia,
			cod_tiempo INT,
            incidentes_totales INT,
            promedio_incidentes DECIMAL(18,2),
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

-- BI Incidente
CREATE PROCEDURE [GRUPO_9800].MIGRAR_BI_incidente
AS
BEGIN
	INSERT INTO GRUPO_9800.BI_incidente
	SELECT * FROM GRUPO_9800.incidente
END
GO
*/
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


GO
-- Migracion fact table desgaste
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_1
AS
BEGIN

	INSERT INTO GRUPO_9800.BI_fact_table_1 (circuito_codigo,cod_escuderia,vehiculo_numero,id_tipo_sector,cod_tiempo,
											desgaste_caja_promedio,potencia_motor_promedio,desgaste_freno_promedio,desgaste_neumatico_promedio,
											consumo_combustible_promedio,mejor_tiempo_de_vuelta,maxima_velocidad_alcanzada)
	SELECT tele.circuito_codigo,tele.cod_escuderia,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo,
	
	
	(SELECT MIN(tele_auto_tiempo_vuelta) 
	FROM GRUPO_9800.telemetria_auto ta
	WHERE ta.cod_escuderia = tele.cod_escuderia 
	AND ta.circuito_codigo = tele.circuito_codigo 
	AND ta.tele_auto_tiempo_vuelta <> 0 
	AND YEAR(ta.tele_fecha) = GRUPO_9800.obtener_anio(t.cod_tiempo)
	GROUP BY ta.cod_escuderia,ta.circuito_codigo,YEAR(ta.tele_fecha)) 'Minimo tiempo de vuelta por escuderia',
	(SELECT SUM(tele_auto_combustible)/COUNT(vehiculo_numero) 
	FROM GRUPO_9800.telemetria_auto 
	WHERE circuito_codigo = tele.circuito_codigo 
	GROUP BY circuito_codigo) 'Combustible promedio por circuito',
	(SELECT MAX(ta.tele_auto_velocidad)
	FROM GRUPO_9800.telemetria_auto ta
	JOIN GRUPO_9800.sector se ON se.codigo_sector = ta.codigo_sector
	WHERE ta.vehiculo_numero = tele.vehiculo_numero 
	AND tele.cod_escuderia = ta.cod_escuderia 
	AND s.id_tipo_sector = se.id_tipo_sector
	AND tele.circuito_codigo = ta.circuito_codigo
	GROUP BY ta.vehiculo_numero,ta.cod_escuderia,se.id_tipo_sector,ta.circuito_codigo) 'Velocidad maxima'
	FROM GRUPO_9800.telemetria_auto tele
	JOIN GRUPO_9800.sector s ON tele.codigo_sector = s.codigo_sector
	JOIN GRUPO_9800.BI_vehiculo v ON tele.vehiculo_numero = v.vehiculo_numero AND tele.cod_escuderia = v.cod_escuderia
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(tele.tele_fecha) = t.anio  AND GRUPO_9800.obtener_cuatrimestre(tele.tele_fecha) = t.cuatrimestre
	GROUP BY tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo,v.cod_piloto
	order by tele.cod_escuderia,tele.circuito_codigo,tele.vehiculo_numero,s.id_tipo_sector,t.cod_tiempo
END


GO
-- Migracion fact table desgaste
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_1
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


CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_1
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

CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_2 --LISTO
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_fact_table_2 (cod_escuderia,circuito_codigo,cod_tiempo,cantidad_de_paradas,tiempo_consumido_parada_box,tiempo_promedio_parada_box) 
	SELECT e.cod_escuderia, 
	ci.circuito_codigo,
	t.cod_tiempo,
	(SELECT COUNT(p.cod_parada_box)
	FROM GRUPO_9800.parada_box p 
	JOIN GRUPO_9800.parada_box_por_vehiculo pv ON p.cod_parada_box = pv.cod_parada_box
	JOIN GRUPO_9800.carrera carr ON carr.codigo_carrera = p.codigo_carrera 
	WHERE YEAR(carr.carrera_fecha) = t.anio
	AND carr.circuito_codigo = ci.circuito_codigo
	AND pv.cod_escuderia = e.cod_escuderia
	GROUP BY YEAR(carr.carrera_fecha),carr.circuito_codigo,pv.cod_escuderia) 'Cantidad de paradas de box',
	(SELECT SUM(p.parada_box_tiempo) 
	FROM GRUPO_9800.parada_box p 
	JOIN GRUPO_9800.carrera carr ON carr.codigo_carrera = p.codigo_carrera   
	WHERE ci.circuito_codigo = carr.circuito_codigo
	GROUP BY carr.circuito_codigo) 'Tiempo consumido en parada de box' ,
	(SELECT AVG(p.parada_box_tiempo) 
	FROM GRUPO_9800.parada_box p 
	JOIN GRUPO_9800.parada_box_por_vehiculo pv ON p.cod_parada_box = pv.cod_parada_box
	JOIN GRUPO_9800.carrera carr ON carr.codigo_carrera = p.codigo_carrera  
	WHERE e.cod_escuderia = pv.cod_escuderia 
	AND t.cod_tiempo = GRUPO_9800.get_codigo_tiempo(carr.carrera_fecha)
	GROUP BY pv.cod_escuderia,GRUPO_9800.get_codigo_tiempo(carr.carrera_fecha)) 'Tiempo promedio en parada de box'
	FROM GRUPO_9800.parada_box_por_vehiculo pbv 
	JOIN GRUPO_9800.parada_box pb ON (pbv.cod_parada_box = pb.cod_parada_box)
    JOIN GRUPO_9800.BI_escuderia e ON (pbv.cod_escuderia = e.cod_escuderia)
    JOIN GRUPO_9800.carrera ca ON (pb.codigo_carrera = ca.codigo_carrera)
    JOIN GRUPO_9800.BI_circuito ci ON (ca.circuito_codigo = ci.circuito_codigo)
	JOIN GRUPO_9800.BI_tiempo t ON YEAR(ca.carrera_fecha) = t.anio AND GRUPO_9800.obtener_cuatrimestre(ca.carrera_fecha) = t.cuatrimestre
	GROUP BY e.cod_escuderia, ci.circuito_codigo,t.cod_tiempo,t.anio

END
/*
SELECT pv.cod_escuderia,AVG(p.parada_box_tiempo) 
	FROM GRUPO_9800.parada_box p 
	JOIN GRUPO_9800.parada_box_por_vehiculo pv ON p.cod_parada_box = pv.cod_parada_box
	JOIN GRUPO_9800.carrera carr ON carr.codigo_carrera = p.codigo_carrera  
	GROUP BY pv.cod_escuderia,YEAR(carr.carrera_fecha),GRUPO_9800.obtener_cuatrimestre(carr.carrera_fecha)

select COUNT(pv.cod_parada_box) from grupo_9800.parada_box_por_vehiculo pv 
JOIN GRUPO_9800.parada_box p ON pv.cod_parada_box = p.cod_parada_box 
JOIN GRUPO_9800.carrera c ON  p.codigo_carrera = c.codigo_carrera
GROUP BY c.circuito_codigo,pv.cod_escuderia,YEAR(c.carrera_fecha)
ORDER BY pv.cod_escuderia,c.circuito_codigo
*/
-- Migracion Fact table incidentes 
GO
CREATE PROCEDURE [GRUPO_9800].MIGRATE_BI_fact_table_3
AS
BEGIN
    INSERT INTO GRUPO_9800.BI_fact_table_3 (circuito_codigo,id_tipo_sector,cod_escuderia,cod_tiempo,incidentes_totales,promedio_incidentes)
    SELECT i.circuito_codigo,
	ts.id_tipo_sector,
	e.cod_escuderia,
	t.cod_tiempo,
	(SELECT COUNT(inc_a.cod_incidente) 
	FROM GRUPO_9800.incidente inc 
	JOIN GRUPO_9800.incidente_por_auto inc_a ON inc_a.cod_incidente = inc.cod_incidente
	JOIN GRUPO_9800.carrera carr ON inc.codigo_carrera = carr.codigo_carrera
	WHERE YEAR(carr.carrera_fecha) = t.anio
	AND inc.circuito_codigo = i.circuito_codigo
	GROUP BY YEAR(carr.carrera_fecha),inc.circuito_codigo) 'Incidentes totales',
	(SELECT COUNT(inc_a.cod_incidente)
	FROM GRUPO_9800.incidente inc 
	JOIN GRUPO_9800.incidente_por_auto inc_a ON inc_a.cod_incidente = inc.cod_incidente
	JOIN GRUPO_9800.carrera carr ON inc.codigo_carrera = carr.codigo_carrera
	JOIN GRUPO_9800.sector se ON se.codigo_sector = inc.codigo_sector
	WHERE t.anio = YEAR(carr.carrera_fecha)
	AND se.id_tipo_sector = ts.id_tipo_sector
	AND e.cod_escuderia = inc_a.cod_escuderia
	GROUP BY  YEAR(carr.carrera_fecha),se.id_tipo_sector,inc_a.cod_escuderia) / (SELECT COUNT(inc_a.cod_incidente) 
																				FROM GRUPO_9800.incidente inc 
																				JOIN GRUPO_9800.incidente_por_auto inc_a ON inc_a.cod_incidente = inc.cod_incidente
																				JOIN GRUPO_9800.carrera carr ON inc.codigo_carrera = carr.codigo_carrera
																				WHERE YEAR(carr.carrera_fecha) = t.anio
																				AND inc_a.cod_escuderia = e.cod_escuderia
																				GROUP BY YEAR(carr.carrera_fecha),inc_a.cod_escuderia) 'Promedio de incidentes'
	FROM GRUPO_9800.BI_circuito c
	JOIN GRUPO_9800.incidente i ON c.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.incidente_por_auto ia ON i.cod_incidente = ia.cod_incidente
	JOIN GRUPO_9800.BI_escuderia e ON e.cod_escuderia = ia.cod_escuderia 
	JOIN GRUPO_9800.sector s ON s.codigo_sector = i.codigo_sector AND s.circuito_codigo = i.circuito_codigo
	JOIN GRUPO_9800.BI_tipo_sector ts ON s.id_tipo_sector = ts.id_tipo_sector 
	JOIN GRUPO_9800.carrera ca ON i.codigo_carrera = ca.codigo_carrera
	JOIN GRUPO_9800.BI_TIEMPO t ON YEAR(ca.carrera_fecha) = t.anio 
    GROUP BY i.circuito_codigo,ts.id_tipo_sector,e.cod_escuderia,t.cod_tiempo,t.anio
END
GO
/*

select * from GRUPO_9800.incidente_por_auto IA 
join GRUPO_9800.incidente I on IA.cod_incidente = I.cod_incidente
order by circuito_codigo

SELECT inc.circuito_codigo,COUNT(inc_a.cod_incidente),YEAR(carrera_fecha)
	FROM GRUPO_9800.incidente inc 
	JOIN GRUPO_9800.incidente_por_auto inc_a ON inc_a.cod_incidente = inc.cod_incidente
	JOIN GRUPO_9800.carrera carr ON inc.codigo_carrera = carr.codigo_carrera
GROUP BY inc.circuito_codigo,YEAR(carrera_fecha)
*/

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
--EXEC [GRUPO_9800].MIGRATE_BI_fact_table_1
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_2
EXEC [GRUPO_9800].MIGRATE_BI_fact_table_3



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
	SELECT circuito_codigo [codigo], t.anio [anio], incidentes_totales [incidentes_por_anio]
		  ,ROW_NUMBER() OVER (
						 PARTITION BY t.anio
						 ORDER BY incidentes_totales DESC
         		   ) AS [ROW NUMBER]
	  FROM GRUPO_9800.BI_fact_table_3 ft
		JOIN GRUPO_9800.BI_tiempo t ON t.cod_tiempo = ft.cod_tiempo
		GROUP BY circuito_codigo,t.anio,incidentes_totales
	  ) groups
	WHERE groups.[ROW NUMBER] <=3
	
GO

-- OK 
CREATE VIEW GRUPO_9800.promedioIncidentesPorEscuderiaXanio
AS
	SELECT cod_escuderia,promedio_incidentes,t.anio
	FROM GRUPO_9800.BI_fact_table_3 ft
	JOIN GRUPO_9800.BI_tiempo t ON t.cod_tiempo = ft.cod_tiempo  
	GROUP BY cod_escuderia,promedio_incidentes,t.anio

GO


/*
Cantidad de paradas por circuito por escudería por año.
*/

CREATE VIEW GRUPO_9800.paradasPorCircuito
AS
	SELECT circuito_codigo,cod_escuderia,t.anio,cantidad_de_paradas
	FROM GRUPO_9800.BI_fact_table_2 ft 
	JOIN GRUPO_9800.BI_tiempo t ON ft.cod_tiempo = t.cod_tiempo
	GROUP BY circuito_codigo,cod_escuderia,t.anio,cantidad_de_paradas

/*
Tiempo promedio que tardó cada escudería en las paradas por cuatrimestre.
*/
GO
CREATE VIEW GRUPO_9800.tiempoPromedioPorCuatrimestre
AS
	SELECT cod_escuderia,tiempo_promedio_parada_box,cod_tiempo
	FROM GRUPO_9800.BI_fact_table_2 p
	GROUP BY p.cod_escuderia,cod_tiempo,tiempo_promedio_parada_box


GO
CREATE VIEW GRUPO_9800.top3MayorTiempoEnBoxes
AS
	SELECT TOP 3 circuito_codigo,tiempo_consumido_parada_box 'Tiempo consumido por circuito'
	FROM GRUPO_9800.BI_fact_table_2
	GROUP BY circuito_codigo,tiempo_consumido_parada_box
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
	SELECT  vehiculo_numero,cod_escuderia, id_tipo_sector, circuito_codigo, maxima_velocidad_alcanzada
	FROM GRUPO_9800.BI_fact_table_1
	GROUP BY vehiculo_numero,cod_escuderia,id_tipo_sector,circuito_codigo,velocidad_

-- Los 3 de circuitos con mayor consumo de combustible promedio

 -- OK

GO
CREATE VIEW GRUPO_9800.top3CircuitosMayorConsumoDeCombustible
AS
	SELECT TOP 3 circuito_codigo, maximo_combustible_consumido
	FROM GRUPO_9800.BI_fact_table_1
	GROUP BY circuito_codigo, maximo_combustible_consumido


-- Mejor tiempo de vuelta de cada escudería por circuito por año. 
-- El mejor tiempo está dado por el mínimo tiempo en que un auto logra 
-- realizar una vuelta de un circuito.

-- OK

GO
CREATE VIEW GRUPO_9800.mejorTiempoDeVuelta
AS
	SELECT cod_escuderia,circuito_codigo,t.anio,mejor_tiempo_de_vuelta
	FROM GRUPO_9800.BI_fact_table_1 ft
	JOIN GRUPO_9800.BI_TIEMPO t ON t.COD_TIEMPO = ft.COD_TIEMPO
	GROUP BY cod_escuderia,circuito_codigo,t.anio,mejor_tiempo_de_vuelta

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

*/