USE [GD1C2022]

-- Caja
CREATE PROCEDURE migrar_caja
AS
BEGIN
	INSERT INTO caja
	VALUES (caja_nro_serie, caja_modelo, caja_desgaste)
	SELECT TELE_CAJA_NRO_SERIE, TELE_CAJA_MODELO, TELE_CAJA_DESGASTE
	FROM gd_esquema.Maestra
	GROUP BY TELE_CAJA_NRO_SERIE, TELE_CAJA_MODELO, TELE_CAJA_DESGASTE
END
GO

-- Motor
CREATE PROCEDURE migrar_motor 
AS
BEGIN
	INSERT INTO motor
	VALUES (motor_nro_serie, motor_modelo)
	SELECT TELE_MOTOR_NRO_SERIE, TELE_MOTOR_MODELO
	FROM gd_esquema.Maestra
	GROUP BY TELE_MOTOR_NRO_SERIE, TELE_MOTOR_MODELO
END
GO

-- Freno
CREATE PROCEDURE migrar_freno 
AS
BEGIN
	INSERT INTO freno
	VALUES (freno_nro_serie, freno_tamanio_pastilla)
	select TELE_FRENO1_NRO_SERIE,TELE_FRENO1_TAMANIO_DISCO /*FRENO 1*/
	from gd_esquema.Maestra
	UNION
	select TELE_FRENO2_NRO_SERIE,TELE_FRENO2_TAMANIO_DISCO /*FRENO 2*/
	from gd_esquema.Maestra
	UNION
	select TELE_FRENO3_NRO_SERIE,TELE_FRENO3_TAMANIO_DISCO /*FRENO 3*/
	from gd_esquema.Maestra
	UNION
	select TELE_FRENO4_NRO_SERIE,TELE_FRENO4_TAMANIO_DISCO /*FRENO 4*/
	from gd_esquema.Maestra
END 

-- Tipo neumatico 

CREATE PROCEDURE migrar_tipo_neumatico 
AS
BEGIN
	INSERT INTO tipo_neumatico
	VALUES (descripcion)
	select NEUMATICO1_TIPO_NUEVO /*TIPO NEUMATICO*/
	from gd_esquema.Maestra
	UNION 
	select NEUMATICO2_TIPO_NUEVO /*TIPO NEUMATICO*/
	from gd_esquema.Maestra
	UNION 
	select NEUMATICO3_TIPO_NUEVO /*TIPO NEUMATICO*/
	from gd_esquema.Maestra
	UNION 
	select NEUMATICO4_TIPO_NUEVO /*TIPO NEUMATICO*/
	from gd_esquema.Maestra
	UNION 
	select NEUMATICO1_TIPO_VIEJO/*TIPO NEUMATICO*/
	from gd_esquema.Maestra
	UNION 
	select NEUMATICO2_TIPO_VIEJO /*TIPO NEUMATICO*/
	FROM gd_esquema.Maestra
	UNION 
	select NEUMATICO3_TIPO_VIEJO/*TIPO NEUMATICO*/
	from gd_esquema.Maestra
	UNION 
	select NEUMATICO3_TIPO_VIEJO/*TIPO NEUMATICO*/
	from gd_esquema.Maestra
	group by 
	NEUMATICO1_TIPO_NUEVO,
	NEUMATICO2_TIPO_NUEVO,
	NEUMATICO3_TIPO_NUEVO,
	NEUMATICO4_TIPO_NUEVO,
	NEUMATICO1_TIPO_VIEJO,
	NEUMATICO2_TIPO_VIEJO,
	NEUMATICO3_TIPO_VIEJO,
	NEUMATICO3_TIPO_VIEJO
END
GO


-- Tipo Sector
CREATE PROCEDURE migrar_tipo_sector 
AS
BEGIN
	INSERT INTO tipo_sector
	VALUES (descripcion)
	select SECTO_TIPO /*TIPO_SECTOR*/
	from gd_esquema.Maestra
	group by SECTO_TIPO
END
GO

-- Tipo incidente
CREATE PROCEDURE migrar_tipo_incidente 
AS
BEGIN
	INSERT INTO tipo_incidente
	VALUES (descripcion)
	select INCIDENTE_TIPO /*TIPO_INCIDENTE*/
	from gd_esquema.Maestra
	GROUP BY INCIDENTE_TIPO
END
GO

-- Pais 
CREATE PROCEDURE migrar_pais 
AS
	BEGIN
	INSERT INTO pais
	VALUES(nombre)
	select CIRCUITO_PAIS /*PAIS*/
	from gd_esquema.Maestra
	GROUP BY CIRCUITO_PAIS
END
GO

select * from gd_esquema.Maestra

-- Bandera
CREATE PROCEDURE migrar_bandera 
AS
BEGIN
	INSERT INTO bandera
	VALUES (incidente_bandera)
	select INCIDENTE_BANDERA /*BANDERA*/
	from gd_esquema.Maestra
	GROUP BY INCIDENTE_BANDERA
END
GO

-- Escuderia
CREATE PROCEDURE migrar_escuderia 
AS
BEGIN
    INSERT INTO escuderia 
	VALUES (escuderia_nombre, escuderia_nacionalidad)
    select ESCUDERIA_NOMBRE,ESCUDERIA_NACIONALIDAD
    from gd_esquema.Maestra
	GROUP BY ESCUDERIA_NOMBRE,ESCUDERIA_NACIONALIDAD
END
GO

-- Piloto
CREATE PROCEDURE migrar_piloto 
AS
BEGIN
    INSERT INTO piloto 
    VALUES (piloto_nombre, piloto_apellido, piloto_nacionalidad, piloto_fecha_nacimiento)
    select PILOTO_NOMBRE, PILOTO_APELLIDO, PILOTO_NACIONALIDAD, PILOTO_FECHA_NACIMIENTO /*PILOTO*/
    from gd_esquema.Maestra
	GROUP BY 
	PILOTO_NOMBRE, 
	PILOTO_APELLIDO, 
	PILOTO_NACIONALIDAD, 
	PILOTO_FECHA_NACIMIENTO
END
GO

-- Carrera
CREATE PROCEDURE migrar_carrera
AS 
BEGIN 
	INSERT INTO carrera
	SELECT CODIGO_CARRERA,CARRERA_FECHA,CARRERA_CLIMA,CARRERA_CANT_VUELTAS,CIRCUITO_CODIGO
	FROM gd_esquema.Maestra
END 


-- Sector
CREATE PROCEDURE migrar_sector
AS 
BEGIN 
	INSERT INTO sector
	SELECT CODIGO_SECTOR,CIRCUITO_CODIGO,SECTOR_DISTANCIA,id_tipo_sector
	FROM gd_esquema.Maestra
	GROUP BY CODIGO_SECTOR,CIRCUITO_CODIGO,SECTOR_DISTANCIA,id_tipo_sector
END 


-- Parada box
CREATE PROCEDURE migrar_parada_box
AS
BEGIN 
	INSERT INTO parada_box
	VALUES (parada_box_vuelta,parada_box_tiempo,parada_box_carrera)
	SELECT PARADA_BOX_VUELTA,PARADA_BOX_TIEMPO,CODIGO_CARRERA
	FROM gd_esquema.Maestra
	-- Ver si hay que meterle un group by.
END 

----------------------------

-- Telemetria caja
CREATE PROCEDURE migrar_telemetria_caja
AS 
BEGIN
	INSERT INTO telemetria_caja
	SELECT TELE_AUTO_CODIGO,TELE_CAJA_NRO_SERIE,TELE_CAJA_TEMP_ACEITE,TELE_CAJA_RPM,TELE_CAJA_DESGASTE
	FROM gd_esquema.Maestra
END


-- Telemetria motor
CREATE PROCEDURE migrar_telemetria_motor
AS 
BEGIN
	INSERT INTO telemetria_motor
	SELECT TELE_AUTO_COD,TELE_MOTOR_NRO_SERIE,TELE_MOTOR_POTENCIA,
			TELE_MOTOR_TEMP_ACEITE,TELE_MOTOR_TEMP_AGUA,TELE_MOTOR_RPM
	FROM gd_esquema.Maestra
END


--Telemetria neumatico
CREATE PROCEDURE migrar_telemetria_neumatico
AS 
BEGIN
	INSERT INTO telemetria_neumatico
	select TELE_AUTO_CODIGO,TELE_NEUMATICO1_NRO_SERIE,TELE_NEUMATICO1_PROFUNDIDAD,TELE_NEUMATICO1_POSICION,	
			TELE_NEUMATICO1_PRESION, TELE_NEUMATICO1_TEMPERATURA
	from gd_esquema.Maestra
	UNION
	select TELE_AUTO_CODIGO,TELE_NEUMATICO2_NRO_SERIE,TELE_NEUMATICO2_PROFUNDIDAD,TELE_NEUMATICO2_POSICION,	
			TELE_NEUMATICO2_PRESION, TELE_NEUMATICO2_TEMPERATURA /*FRENO 2*/
	from gd_esquema.Maestra
	UNION
	select TELE_AUTO_CODIGO,TELE_NEUMATICO3_NRO_SERIE,TELE_NEUMATICO3_PROFUNDIDAD,TELE_NEUMATICO3_POSICION,	
			TELE_NEUMATICO3_PRESION, TELE_NEUMATICO3_TEMPERATURA /*FRENO 3*/
	from gd_esquema.Maestra
	UNION
	select TELE_AUTO_CODIGO,TELE_NEUMATICO4_NRO_SERIE,TELE_NEUMATICO4_PROFUNDIDAD,TELE_NEUMATICO4_POSICION,	
			TELE_NEUMATICO1_PRESION, TELE_NEUMATICO4_TEMPERATURA /*FRENO 4*/
	from gd_esquema.Maestra
END 
      
--Telemetria freno
CREATE PROCEDURE migrar_telemetria_freno
AS 
BEGIN
	INSERT INTO telemetria_freno
	select TELE_AUTO_CODIGO ,TELE_FRENO1_NRO_SERIE,TELE_FRENO1_GROSOR_PASTILLA,TELE_FRENO1_TAMANIO_DISCO,
			TELE_FRENO1_POSICION,TELE_FRENO1_TEMPERATURA
	FROM gd_esquema.Maestra
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO2_NRO_SERIE,TELE_FRENO2_GROSOR_PASTILLA,TELE_FRENO2_TAMANIO_DISCO,
			TELE_FRENO2_POSICION,TELE_FRENO2_TEMPERATURA /*FRENO 2*/
	from gd_esquema.Maestra
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO3_NRO_SERIE,TELE_FRENO3_GROSOR_PASTILLA,TELE_FRENO3_TAMANIO_DISCO,
			TELE_FRENO3_POSICION,TELE_FRENO3_TEMPERATURA /*FRENO 3*/
	from gd_esquema.Maestra
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO4_NRO_SERIE,TELE_FRENO4_GROSOR_PASTILLA,TELE_FRENO4_TAMANIO_DISCO,
			TELE_FRENO4_POSICION,TELE_FRENO4_TEMPERATURA /*FRENO 4*/
	from gd_esquema.Maestra
	 
END


-- Revisar / Demasiadas filas.

--Telemetria auto
CREATE PROCEDURE migrar_telemetria_auto
AS
BEGIN 

	INSERT INTO telemetria_auto
	SELECT TELE_AUTO_CODIGO,AUTO_NUMERO,CODIGO_CARRERA,CARRERA_FECHA,TELE_AUTO_NUMERO_VUELTA,CODIGO_SECTOR,CIRCUITO_CODIGO,
			TELE_AUTO_DISTANCIA_CARRERA,TELE_AUTO_DISTANCIA_VUELTA,TELE_AUTO_TIEMPO_VUELTA,TELE_AUTO_POSICION,
			TELE_AUTO_COMBUSTIBLE,TELE_CAJA_NRO_SERIE,TELE_MOTOR_NRO_SERIE,TELE_NEUMATICO1_NRO_SERIE,TELE_FRENO1_NRO_SERIE,
			TELE_NEUMATICO2_NRO_SERIE,TELE_FRENO2_NRO_SERIE,TELE_NEUMATICO3_NRO_SERIE,TELE_FRENO3_NRO_SERIE,
			TELE_NEUMATICO4_NRO_SERIE,TELE_FRENO4_NRO_SERIE
	FROM gd_esquema.Maestra
	
	
END 

-- Circuito
CREATE PROCEDURE migrar_circuito
AS
    BEGIN
        INSERT INTO circuito 
        VALUES (circuito_codigo,circuito_nombre,circuito_pais)
        SELECT CIRCUITO_CODIGO,CIRCUITO_NOMBRE,CIRCUITO_PAIS
        FROM gd_esquema.maestra
		GROUP BY CIRCUITO_CODIGO,CIRCUITO_NOMBRE,CIRCUITO_PAIS
    END

-- Incidente
CREATE PROCEDURE migrar_incidente
AS
    BEGIN
        INSERT INTO incidente
        (codigo_sector,circuito_codigo, codigo_carrera, tiempo_incidente,id_incidente_bandera)
        SELECT CODIGO_SECTOR,CIRCUITO_CODIGO, CODIGO_CARRERA, INCIDENTE_TIEMPO,id_incidente_bandera
        FROM gd_esquema.maestra
		JOIN tipo_incidente ON descripcion = INCIDENTE_BANDERA
		GROUP BY CODIGO_SECTOR,CIRCUITO_CODIGO, CODIGO_CARRERA, INCIDENTE_TIEMPO,id_incidente_bandera
    END

SELECT INCIDENTE_BANDERA FROM gd_esquema.Maestra WHERE INCIDENTE_BANDERA IS NOT NULL
-- Incidente por auto
CREATE PROCEDURE migrar_incidente_por_auto
AS
    BEGIN
        INSERT INTO incidente_por_auto
        (vehiculo_numero,numero_vuelta)
        SELECT AUTO_NUMERO,INCIDENTE_NUMERO_VUELTA
        FROM gd_esquema.maestra
		GROUP BY AUTO_NUMERO, INCIDENTE_NUMERO_VUELTA
    END

-- Vehiculo
CREATE PROCEDURE migrar_vehiculo
AS
BEGIN
        INSERT INTO vehiculo
        (vehiculo_numero,vehiculo_modelo)
        SELECT AUTO_NUMERO, AUTO_MODELO
        FROM gd_esquema.maestra
		GROUP BY AUTO_NUMERO, AUTO_MODELO
END


-- Neumatico
CREATE PROCEDURE migrar_neumatico --//TODO CHECK
AS
    BEGIN
        INSERT INTO neumatico
        (neumatico_nro_serie,id_tipo_neumatico)
        SELECT NEUMATICO1_NRO_SERIE_VIEJO,NEUMATICO1_TIPO_VIEJO
        FROM gd_esquema.maestra
        UNION
        SELECT NEUMATICO2_NRO_SERIE_VIEJO,NEUMATICO2_TIPO_VIEJO
        FROM gd_esquema.maestra
        UNION
        SELECT NEUMATICO3_NRO_SERIE_VIEJO,NEUMATICO3_TIPO_VIEJO
        FROM gd_esquema.maestra
        UNION
        SELECT NEUMATICO4_NRO_SERIE_VIEJO,NEUMATICO4_TIPO_VIEJO
        FROM gd_esquema.maestra
        UNION
        SELECT NEUMATICO1_NRO_SERIE_NUEVO,NEUMATICO1_TIPO_NUEVO
        FROM gd_esquema.maestra
        UNION
        SELECT NEUMATICO2_NRO_SERIE_NUEVO,NEUMATICO2_TIPO_NUEVO
        FROM gd_esquema.maestra
        UNION
        SELECT NEUMATICO3_NRO_SERIE_NUEVO,NEUMATICO3_TIPO_NUEVO
        FROM gd_esquema.maestra
        UNION
        SELECT NEUMATICO4_NRO_SERIE_NUEVO,NEUMATICO4_TIPO_NUEVO
        FROM gd_esquema.maestra
END

--Parada box por vehiculo
CREATE PROCEDURE migrar_parada_box_por_vehiculo
BEGIN
	INSERT INTO parada_box_por_vehiculo
	(vehiculo_numero,nro_serie_neumatico_viejo,nro_serie_neumatico_nuevo)
	SELECT AUTO_NUMERO,NEUMATICO1_NRO_SERIE_VIEJO,NEUMATICO1_NRO_SERIE_NUEVO 
	FROM gd_esquema.Maestra
	UNION
    SELECT AUTO_NUMERO,NEUMATICO2_NRO_SERIE_VIEJO,NEUMATICO2_TIPO_NUEVO
    FROM gd_esquema.maestra
    UNION
    SELECT AUTO_NUMERO,NEUMATICO3_NRO_SERIE_VIEJO,NEUMATICO3_TIPO_NUEVO
    FROM gd_esquema.maestra
    UNION
    SELECT AUTO_NUMERO,NEUMATICO4_NRO_SERIE_VIEJO,NEUMATICO4_TIPO_NUEVO
    FROM gd_esquema.maestra
END 


/*
CREATE PROCEDURE migrar_tipo_neumatico 
AS
BEGIN
INSERT INTO tipo_neumatico
select TIPO /*TIPO NEUMATICO*/
from gd_esquema.Maestra
END
GO
*/
-- Caja
-- Motor
-- Freno
-- Tipo neumatico
-- Tipo Sector
-- Tipo incidente
-- Pais 
-- Bandera
-- Escuderia
-- Piloto
-- Carrera
-- Sector
-- Parada box
-- Telemetria caja
-- Telemetria motor
-- Telemetria neumatico
-- Telemetria freno
-- Telemetria auto
-- Circuito
-- Indicente
-- Incidente por auto
-- Vehiculo
-- Parada box por auto
-- Neumatico


----------------------------

