USE [master]
GO
------------------- CREO BASE DE DATOS -------------------
USE [TELEMETRIA_CARRERA]
-- DROP DATABASE TELEMETRIA_CARRERA;
CREATE DATABASE GRUPO_9800;
GO
USE [GRUPO_9800]
------------------- CREACION DE TABLAS -------------------

DROP PROC CREATE_MASTER_TABLES
DROP PROC CREATE_TRANSACTIONAL_TABLES

DROP TABLE incidente_por_auto;
DROP TABLE incidente;
DROP TABLE telemetria_neumatico;
DROP TABLE telemetria_freno;
DROP TABLE telemetria_motor;
DROP TABLE telemetria_caja;
DROP TABLE telemetria_auto;
DROP TABLE parada_box_por_vehiculo;
DROP TABLE parada_box;
DROP TABLE sector;
DROP TABLE carrera;
DROP TABLE circuito;
DROP TABLE vehiculo;
DROP TABLE neumatico;
DROP TABLE freno;
DROP TABLE motor;
DROP TABLE caja;
DROP TABLE bandera;
DROP TABLE pais;
DROP TABLE tipo_neumatico;
DROP TABLE tipo_sector;
DROP TABLE tipo_incidente;
DROP TABLE piloto;
DROP TABLE escuderia;

USE [GRUPO_9800]

CREATE PROC CREATE_MASTER_TABLES
AS
BEGIN
    -- ESCUDERIA
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='escuderia' 
             AND
                   type='U'
     )   
        DROP TABLE escuderia
     ELSE
        CREATE TABLE escuderia (
            cod_escuderia INT IDENTITY PRIMARY KEY,
            escuderia_nombre NVARCHAR(255) ,
            escuderia_nacionalidad NVARCHAR(255) 
    );

    -- PILOTO
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='piloto' 
             AND
                   type='U'
     )   
        DROP TABLE piloto
    ELSE
        CREATE TABLE piloto (
            cod_piloto INT  IDENTITY PRIMARY KEY,
            piloto_nombre NVARCHAR(50) ,
            piloto_apellido NVARCHAR(50) ,
            piloto_nacionalidad NVARCHAR(50) ,
            piloto_fecha_nacimiento DATETIME 
        );

    -- TIPO INCIDENTE
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='tipo_incidente' 
             AND
                   type='U'
     )   
        DROP TABLE tipo_incidente
    ELSE
        CREATE TABLE tipo_incidente (
            id_tipo_incidente SMALLINT  IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

    -- TIPO_SECTOR
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='tipo_sector' 
             AND
                   type='U'
     )  
        DROP TABLE tipo_sector
    ELSE
        CREATE TABLE tipo_sector (
            id_tipo_sector smallint  IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

    -- TIPO NEUMATICO
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='tipo_neumatico' 
             AND
                   type='U'
     )  
        DROP TABLE tipo_neumatico
    ELSE
        CREATE TABLE tipo_neumatico (
            id_tipo_neumatico smallint IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) 
        );

    --- PAIS
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='pais' 
             AND
                   type='U'
    )
        DROP TABLE pais
    ELSE   
        CREATE TABLE pais (
            id_pais smallint  IDENTITY PRIMARY KEY,
            nombre NVARCHAR(50) 
        );
    
    -- BANDERA
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='bandera' 
             AND
                   type='U'
    )
        DROP TABLE bandera
    ELSE
        CREATE TABLE bandera (
            id_incidente_bandera INT IDENTITY  PRIMARY KEY,
            incidente_bandera NVARCHAR(255) 
        );
    
    -- CAJA
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='caja' 
             AND
                   type='U'
    )
        DROP TABLE caja
    ELSE 
        CREATE TABLE caja (
            caja_nro_serie NVARCHAR(255) PRIMARY KEY,
            caja_modelo NVARCHAR(50) ,
        );
    
    -- MOTOR
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='motor' 
             AND
                   type='U'
    )
        DROP TABLE motor
    ELSE
        CREATE TABLE motor (
            motor_nro_serie NVARCHAR(255) PRIMARY KEY,
            motor_modelo NVARCHAR(50) 
        );
    
    --FRENO
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='freno' 
             AND
                   type='U'
    )
        DROP TABLE freno
    ELSE
        CREATE TABLE freno (
            freno_nro_serie NVARCHAR(255) PRIMARY KEY,
            freno_tamanio_pastilla decimal(18,2) 
        );
END


CREATE PROC CREATE_TRANSACTIONAL_TABLES
AS 
BEGIN 
    -- Neumatico
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='neumatico' 
             AND
                   type='U'
     )   
        DROP TABLE neumatico
     ELSE
    CREATE TABLE neumatico (
        neumatico_nro_serie NVARCHAR(255) PRIMARY KEY,
        --neumatico_estado NVARCHAR(255) ,
        neumatico_profundidad decimal(18,2),
        id_tipo_neumatico smallint 
    );
    ALTER TABLE neumatico
    ADD CONSTRAINT FK_NeumaticoTiponeumatico
    FOREIGN KEY (id_tipo_neumatico) REFERENCES tipo_neumatico(id_tipo_neumatico);

    -- vehiculo
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='vehiculo' 
             AND
                   type='U'
     )   
        DROP TABLE vehiculo
    ELSE
        CREATE TABLE vehiculo (
            vehiculo_numero INT,
            vehiculo_modelo NVARCHAR(255),
            cod_escuderia INT ,
            cod_piloto INT ,
            PRIMARY KEY (vehiculo_numero, cod_escuderia)
        );
    ALTER TABLE vehiculo
    ADD CONSTRAINT FK_VehiculoEscuderia
    FOREIGN KEY (cod_escuderia) REFERENCES escuderia(cod_escuderia);

    ALTER TABLE vehiculo
    ADD CONSTRAINT FK_vehiculoPiloto
    FOREIGN KEY (cod_piloto) REFERENCES piloto(cod_piloto);

    -- Circuito
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='circuito' 
             AND
                   type='U'
    )
        DROP TABLE circuito
    ELSE
        CREATE TABLE circuito (
            circuito_codigo INT PRIMARY KEY,
            circuito_nombre NVARCHAR(255)  ,
            id_pais smallint,
        );
    ALTER TABLE circuito
    ADD CONSTRAINT FK_CircuitoPais
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais);

    -- Carrera
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='carrera' 
             AND
                   type='U'
    )
        DROP TABLE carrera
    ELSE
    CREATE TABLE carrera (
        codigo_carrera INT PRIMARY KEY,
        carrera_fecha date,
        carrera_clima varchar(100),
        carrera_total_carrera numeric(18,2),
        carrera_cant_vueltas INT,
        circuito_codigo INT 
    );
    ALTER TABLE carrera
    ADD CONSTRAINT FK_CarreraCircuito
    FOREIGN KEY (circuito_codigo) REFERENCES circuito(circuito_codigo);

    -- Sector
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='sector' 
             AND
                   type='U'
    )
        DROP TABLE sector
    ELSE
        CREATE TABLE sector (
            codigo_sector INT,
            sector_distancia numeric(18,2),
            id_tipo_sector smallint,
            circuito_codigo INT,
            PRIMARY KEY (codigo_sector, circuito_codigo)
    );
    ALTER TABLE sector
    ADD CONSTRAINT FK_SectorCircuito
    FOREIGN KEY (circuito_codigo) REFERENCES circuito(circuito_codigo);

    ALTER TABLE sector
    ADD CONSTRAINT FK_SectorTipoSector
    FOREIGN KEY (id_tipo_sector) REFERENCES tipo_sector(id_tipo_sector);

    -- PARADA BOX
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='parada_box' 
             AND
                   type='U'
    )
        DROP TABLE parada_box
    ELSE
        CREATE TABLE parada_box (
            cod_parada_box INT IDENTITY PRIMARY KEY,
            parada_box_vuelta numeric(18,0),
            parada_box_tiempo numeric(18,2),
            codigo_carrera INT,
    );

    ALTER TABLE parada_box
    ADD CONSTRAINT FK_ParadaboxCarrera
    FOREIGN KEY(codigo_carrera) REFERENCES carrera(codigo_carrera);

    -- PARADA BOX X vehiculo
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='parada_box_por_vehiculo' 
             AND
                   type='U'
    )
        DROP TABLE parada_box_por_vehiculo
    ELSE
        CREATE TABLE parada_box_por_vehiculo (
            cod_parada_box INT,
            vehiculo_numero INT,
            cod_escuderia INT,
            nro_serie_neumatico_viejo NVARCHAR(255),
            nro_serie_neumatico_nuevo NVARCHAR(255) NULL,
            PRIMARY KEY (cod_parada_box, vehiculo_numero, cod_escuderia)
        );

    ALTER TABLE parada_box_por_vehiculo
    ADD CONSTRAINT FK_ParadaboxporvehiculoParadabox
    FOREIGN KEY(cod_parada_box) REFERENCES parada_box(cod_parada_box);

    ALTER TABLE parada_box_por_vehiculo
    ADD CONSTRAINT FK_ParadaboxporvehiculoEscuderia
    FOREIGN KEY (cod_escuderia) REFERENCES escuderia(cod_escuderia);

    ALTER TABLE parada_box_por_vehiculo
    ADD CONSTRAINT FK_ParadaboxporvehiculoVehiculo
    FOREIGN KEY(vehiculo_numero,cod_escuderia) REFERENCES vehiculo(vehiculo_numero,cod_escuderia);

	ALTER TABLE parada_box_por_vehiculo
    ADD CONSTRAINT FK_ParadaboxporvehiculoNeumaticoViejo
    FOREIGN KEY(nro_serie_neumatico_viejo) REFERENCES neumatico(neumatico_nro_serie);

	ALTER TABLE parada_box_por_vehiculo
    ADD CONSTRAINT FK_ParadaboxporvehiculoNeumaticoNuevo
    FOREIGN KEY(nro_serie_neumatico_nuevo) REFERENCES neumatico(neumatico_nro_serie);

    -- TELEMETRIA AUTO
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='telemetria_auto' 
             AND
                   type='U'
    )
        DROP TABLE telemetria_auto
    ELSE
        CREATE TABLE telemetria_auto (
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

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoAuto
    FOREIGN KEY (vehiculo_numero,cod_escuderia) REFERENCES vehiculo(vehiculo_numero,cod_escuderia);

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoCarrera
    FOREIGN KEY (codigo_carrera) REFERENCES carrera(codigo_carrera);

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoSector
    FOREIGN KEY (codigo_sector,circuito_codigo) REFERENCES sector(codigo_sector,circuito_codigo);


    -- TELEMETRIA CAJA
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='telemetria_caja' 
             AND
                   type='U'
    )
        DROP TABLE telemetria_caja
    ELSE
        CREATE TABLE telemetria_caja (
            tele_auto_cod INT ,
            caja_nro_serie NVARCHAR(255) ,
            tele_caja_temp_aceite numeric(18,2) ,
            tele_caja_rpm numeric(18,2) ,
            tele_caja_desgaste numeric(18,2) ,
            PRIMARY KEY (tele_auto_cod, caja_nro_serie)
    );

    ALTER TABLE telemetria_caja
    ADD CONSTRAINT FK_Telemetriacaja_Telemetriaauto
    FOREIGN KEY (tele_auto_cod) REFERENCES telemetria_auto(tele_auto_cod);

	ALTER TABLE telemetria_caja
    ADD CONSTRAINT FK_TelemetriacajaCaja
    FOREIGN KEY(caja_nro_serie) REFERENCES caja(caja_nro_serie);
    -- TELEMETRIA MOTOR
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='telemetria_motor' 
             AND
                   type='U'
    )
        DROP TABLE telemetria_motor
    ELSE
        CREATE TABLE telemetria_motor (
        tele_auto_cod INT ,
        motor_nro_serie NVARCHAR(255) ,
        tele_motor_potencia numeric(18,6) ,
        tele_motor_temp_aceite numeric(18,6) ,
        tele_motor_temp_agua numeric(18,6) ,
        tele_motor_rpm numeric(18,6) ,
        PRIMARY KEY (tele_auto_cod, motor_nro_serie)
    );

    ALTER TABLE telemetria_motor
    ADD CONSTRAINT FK_Telemetriamotor_Telemetriaauto
    FOREIGN KEY (tele_auto_cod) REFERENCES telemetria_auto(tele_auto_cod);

    ALTER TABLE telemetria_motor
    ADD CONSTRAINT FK_TelemetriamotorMotor
    FOREIGN KEY(motor_nro_serie) REFERENCES motor(motor_nro_serie);

    --- TELEMETRIA FRENO
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='telemetria_freno' 
             AND
                   type='U'
    )
        DROP TABLE telemetria_freno
    ELSE    
        CREATE TABLE telemetria_freno (
        tele_auto_cod INT ,
        freno_nro_serie NVARCHAR(255) ,
        tele_freno_grosor_pastilla decimal(18,2) ,
        tele_freno_tamanio_disco decimal(18,2) ,
        tele_freno_posicion NVARCHAR(255) ,
        tele_freno_temperatura numeric(18,2) ,
        PRIMARY KEY (tele_auto_cod, freno_nro_serie)
    );

    ALTER TABLE telemetria_freno
    ADD CONSTRAINT FK_Telemetriafreno_Telemetriaauto
    FOREIGN KEY(tele_auto_cod) REFERENCES telemetria_auto(tele_auto_cod);

    ALTER TABLE telemetria_freno
    ADD CONSTRAINT FK_TelemetriafrenoFreno
    FOREIGN KEY(freno_nro_serie) REFERENCES freno(freno_nro_serie);

    -- TELEMETRIA NEUMATICO
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='telemetria_neumatico' 
             AND
                   type='U'
    )
        DROP TABLE telemetria_neumatico
    ELSE  
    CREATE TABLE telemetria_neumatico (
        tele_auto_cod INT ,
        neumatico_nro_serie NVARCHAR(255) ,
        tele_neumatico_profundidad numeric(18,6) ,
        tele_neumatico_posicion NVARCHAR(255) ,
        tele_neumatico_presion numeric(18,6) ,
        tele_neumatico_temperatura numeric(18,6) ,
        PRIMARY KEY (tele_auto_cod, neumatico_nro_serie)
    );

    ALTER TABLE telemetria_neumatico
    ADD CONSTRAINT FK_Telemetrianeumatico_Telemetriaauto
    FOREIGN KEY(tele_auto_cod) REFERENCES telemetria_auto(tele_auto_cod);

    ALTER TABLE telemetria_neumatico
    ADD CONSTRAINT FK_TelemetrianeumaticoNeumatico
    FOREIGN KEY(neumatico_nro_serie) REFERENCES neumatico(neumatico_nro_serie);

    -- INCIDENTE
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='incidente' 
             AND
                   type='U'
    )
        DROP TABLE incidente
    ELSE    
        CREATE TABLE incidente (
        cod_incidente INT IDENTITY  PRIMARY KEY,
        codigo_sector INT ,
        circuito_codigo INT ,
        codigo_carrera INT ,
        tiempo_incidente decimal(18,2) ,
        id_incidente_bandera INT ,
    );

    ALTER TABLE incidente
    ADD CONSTRAINT FK_IncidenteSector
    FOREIGN KEY (codigo_sector,circuito_codigo) REFERENCES sector(codigo_sector,circuito_codigo);

    ALTER TABLE incidente
    ADD CONSTRAINT FK_IncidenteCarrera
    FOREIGN KEY (codigo_carrera) REFERENCES carrera(codigo_carrera);

    ALTER TABLE incidente
    ADD CONSTRAINT FK_IncidenteBandera
    FOREIGN KEY (id_incidente_bandera) REFERENCES bandera(id_incidente_bandera);

    -- INCIDENTE POR AUTO
    IF EXISTS (
         SELECT name FROM sysobjects 
             WHERE name='incidente_por_auto' 
             AND
                   type='U'
    )
        DROP TABLE incidente_por_auto
    ELSE    
    CREATE TABLE incidente_por_auto (
        vehiculo_numero INT ,
        cod_escuderia INT ,
        cod_incidente INT ,
        id_tipo_incidente smallint ,
        numero_vuelta numeric ,
        PRIMARY KEY (vehiculo_numero, cod_escuderia, cod_incidente)
    );

    ALTER TABLE incidente_por_auto
    ADD CONSTRAINT FK_IncidenteporautoVehiculo
    FOREIGN KEY (vehiculo_numero,cod_escuderia) REFERENCES vehiculo(vehiculo_numero,cod_escuderia);

    ALTER TABLE incidente_por_auto
    ADD CONSTRAINT FK_IncidenteporautoIncidente
    FOREIGN KEY(cod_incidente) REFERENCES incidente(cod_incidente);    
END

EXEC CREATE_MASTER_TABLES
EXEC CREATE_TRANSACTIONAL_TABLES

select * from caja
GO
-- Caja 
CREATE PROCEDURE migrar_caja
AS
BEGIN
	INSERT INTO caja
	(caja_nro_serie, caja_modelo)
	SELECT TELE_CAJA_NRO_SERIE, TELE_CAJA_MODELO
	FROM GD1C2022.gd_esquema.Maestra
	WHERE TELE_CAJA_NRO_SERIE IS NOT NULL
	GROUP BY TELE_CAJA_NRO_SERIE, TELE_CAJA_MODELO
END
GO

-- Motor
CREATE PROCEDURE migrar_motor 
AS
BEGIN
	INSERT INTO motor
	(motor_nro_serie, motor_modelo)
	SELECT DISTINCT TELE_MOTOR_NRO_SERIE, TELE_MOTOR_MODELO
	FROM GD1C2022.gd_esquema.Maestra
	WHERE TELE_MOTOR_NRO_SERIE IS NOT NULL
	--GROUP BY TELE_MOTOR_NRO_SERIE, TELE_MOTOR_MODELO
	ORDER BY TELE_MOTOR_NRO_SERIE
END
GO

-- Freno
CREATE PROCEDURE migrar_freno 
AS
BEGIN
	INSERT INTO freno
	(freno_nro_serie, freno_tamanio_pastilla)
	select TELE_FRENO1_NRO_SERIE,TELE_FRENO1_TAMANIO_DISCO /*FRENO 1*/
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_FRENO1_NRO_SERIE IS NOT NULL
	UNION
	select TELE_FRENO2_NRO_SERIE,TELE_FRENO2_TAMANIO_DISCO /*FRENO 2*/
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_FRENO2_NRO_SERIE IS NOT NULL
	UNION
	select TELE_FRENO3_NRO_SERIE,TELE_FRENO3_TAMANIO_DISCO /*FRENO 3*/
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_FRENO3_NRO_SERIE IS NOT NULL
	UNION
	select TELE_FRENO4_NRO_SERIE,TELE_FRENO4_TAMANIO_DISCO /*FRENO 4*/
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_FRENO4_NRO_SERIE IS NOT NULL

END 

-- Tipo neumatico 
GO
CREATE PROCEDURE migrar_tipo_neumatico 
AS
BEGIN
	INSERT INTO tipo_neumatico
	(descripcion)
	select NEUMATICO1_TIPO_NUEVO /*TIPO NEUMATICO*/
	from GD1C2022.gd_esquema.Maestra
	UNION 
	select NEUMATICO2_TIPO_NUEVO /*TIPO NEUMATICO*/
	from GD1C2022.gd_esquema.Maestra
	UNION 
	select NEUMATICO3_TIPO_NUEVO /*TIPO NEUMATICO*/
	from GD1C2022.gd_esquema.Maestra
	UNION 
	select NEUMATICO4_TIPO_NUEVO /*TIPO NEUMATICO*/
	from GD1C2022.gd_esquema.Maestra
	UNION 
	select NEUMATICO1_TIPO_VIEJO/*TIPO NEUMATICO*/
	from GD1C2022.gd_esquema.Maestra
	UNION 
	select NEUMATICO2_TIPO_VIEJO /*TIPO NEUMATICO*/
	FROM GD1C2022.gd_esquema.Maestra
	UNION 
	select NEUMATICO3_TIPO_VIEJO/*TIPO NEUMATICO*/
	from GD1C2022.gd_esquema.Maestra
	UNION 
	select NEUMATICO3_TIPO_VIEJO/*TIPO NEUMATICO*/
	from GD1C2022.gd_esquema.Maestra
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
	(descripcion)
	select SECTO_TIPO /*TIPO_SECTOR*/
	from GD1C2022.gd_esquema.Maestra
	group by SECTO_TIPO
END
GO

-- Tipo incidente
CREATE PROCEDURE migrar_tipo_incidente 
AS
BEGIN
	INSERT INTO tipo_incidente
	(descripcion)
	select INCIDENTE_TIPO /*TIPO_INCIDENTE*/
	from GD1C2022.gd_esquema.Maestra
	GROUP BY INCIDENTE_TIPO
END
GO

-- Pais 
CREATE PROCEDURE migrar_pais 
AS
	BEGIN
	INSERT INTO pais
	(nombre)
	select CIRCUITO_PAIS /*PAIS*/
	from GD1C2022.gd_esquema.Maestra
	GROUP BY CIRCUITO_PAIS
END
GO


-- Bandera
CREATE PROCEDURE migrar_bandera 
AS
BEGIN
	INSERT INTO bandera
	(incidente_bandera)
	select INCIDENTE_BANDERA /*BANDERA*/
	from GD1C2022.gd_esquema.Maestra
	GROUP BY INCIDENTE_BANDERA
END
GO

-- Escuderia
CREATE PROCEDURE migrar_escuderia 
AS
BEGIN
    INSERT INTO escuderia 
	(escuderia_nombre, escuderia_nacionalidad)
    select ESCUDERIA_NOMBRE,ESCUDERIA_NACIONALIDAD
    from GD1C2022.gd_esquema.Maestra
	GROUP BY ESCUDERIA_NOMBRE,ESCUDERIA_NACIONALIDAD
END
GO

-- Piloto
CREATE PROCEDURE migrar_piloto 
AS
BEGIN
    INSERT INTO piloto 
    (piloto_nombre, piloto_apellido, piloto_nacionalidad, piloto_fecha_nacimiento)
    select PILOTO_NOMBRE, PILOTO_APELLIDO, PILOTO_NACIONALIDAD, PILOTO_FECHA_NACIMIENTO /*PILOTO*/
    from GD1C2022.gd_esquema.Maestra
	GROUP BY 
	PILOTO_NOMBRE, 
	PILOTO_APELLIDO, 
	PILOTO_NACIONALIDAD, 
	PILOTO_FECHA_NACIMIENTO
END
GO

-- Circuito
CREATE PROCEDURE migrar_circuito
AS
    BEGIN
        INSERT INTO circuito 
        (circuito_codigo,circuito_nombre,id_pais)
        SELECT CIRCUITO_CODIGO,CIRCUITO_NOMBRE,CIRCUITO_PAIS
        FROM GD1C2022.gd_esquema.maestra
		WHERE CIRCUITO_CODIGO IS NOT NULL
		GROUP BY CIRCUITO_CODIGO,CIRCUITO_NOMBRE,CIRCUITO_PAIS
    END
GO

-- Carrera
CREATE PROCEDURE migrar_carrera
AS 
BEGIN 
	INSERT INTO carrera
	(codigo_carrera,carrera_fecha,carrera_clima,carrera_cant_vueltas,circuito_codigo)
	SELECT CODIGO_CARRERA,CARRERA_FECHA,CARRERA_CLIMA,CARRERA_CANT_VUELTAS,CIRCUITO_CODIGO
	FROM GD1C2022.gd_esquema.Maestra
	WHERE CODIGO_CARRERA IS NOT NULL
	GROUP BY CODIGO_CARRERA,CARRERA_FECHA,CARRERA_CLIMA,CARRERA_CANT_VUELTAS,CIRCUITO_CODIGO
END 
GO

-- Sector
CREATE PROCEDURE migrar_sector
AS 
BEGIN 
	INSERT INTO sector
	(codigo_sector,circuito_codigo,sector_distancia,id_tipo_sector)
	SELECT CODIGO_SECTOR,CIRCUITO_CODIGO,SECTOR_DISTANCIA,id_tipo_sector
	FROM GD1C2022.gd_esquema.Maestra
	JOIN tipo_sector ti ON ti.descripcion = SECTO_TIPO
	WHERE CODIGO_SECTOR IS NOT NULL
	AND CIRCUITO_CODIGO IS NOT NULL
	GROUP BY CODIGO_SECTOR,CIRCUITO_CODIGO,SECTOR_DISTANCIA,id_tipo_sector
END 
GO

-- Parada box
CREATE PROCEDURE migrar_parada_box
AS
BEGIN 
	INSERT INTO parada_box
	(parada_box_vuelta,parada_box_tiempo,codigo_carrera)
	SELECT  PARADA_BOX_VUELTA,PARADA_BOX_TIEMPO,CODIGO_CARRERA
	FROM GD1C2022.gd_esquema.Maestra
	GROUP BY PARADA_BOX_VUELTA,PARADA_BOX_TIEMPO,CODIGO_CARRERA
	-- Ver si hay que meterle un group by.
END 

----------------------------
GO

-- Telemetria caja
CREATE PROCEDURE migrar_telemetria_caja
AS 
BEGIN
	INSERT INTO telemetria_caja
	SELECT TELE_AUTO_CODIGO,TELE_CAJA_NRO_SERIE,TELE_CAJA_TEMP_ACEITE,TELE_CAJA_RPM,TELE_CAJA_DESGASTE
	FROM GD1C2022.gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_CAJA_NRO_SERIE IS NOT NULL
END

GO
-- Telemetria motor
CREATE PROCEDURE migrar_telemetria_motor
AS 
BEGIN
	INSERT INTO telemetria_motor
	SELECT TELE_AUTO_CODIGO,TELE_MOTOR_NRO_SERIE,TELE_MOTOR_POTENCIA,
			TELE_MOTOR_TEMP_ACEITE,TELE_MOTOR_TEMP_AGUA,TELE_MOTOR_RPM
	FROM GD1C2022.gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_MOTOR_NRO_SERIE IS NOT NULL
END

GO
--Telemetria neumatico
CREATE PROCEDURE migrar_telemetria_neumatico
AS 
BEGIN
	INSERT INTO telemetria_neumatico
	select TELE_AUTO_CODIGO,TELE_NEUMATICO1_NRO_SERIE,TELE_NEUMATICO1_PROFUNDIDAD,TELE_NEUMATICO1_POSICION,	
			TELE_NEUMATICO1_PRESION, TELE_NEUMATICO1_TEMPERATURA
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO1_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO,TELE_NEUMATICO2_NRO_SERIE,TELE_NEUMATICO2_PROFUNDIDAD,TELE_NEUMATICO2_POSICION,	
			TELE_NEUMATICO2_PRESION, TELE_NEUMATICO2_TEMPERATURA /*FRENO 2*/
	from GD1C2022.gd_esquema.Maestra
		WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO2_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO,TELE_NEUMATICO3_NRO_SERIE,TELE_NEUMATICO3_PROFUNDIDAD,TELE_NEUMATICO3_POSICION,	
			TELE_NEUMATICO3_PRESION, TELE_NEUMATICO3_TEMPERATURA /*FRENO 3*/
	from GD1C2022.gd_esquema.Maestra
		WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO3_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO,TELE_NEUMATICO4_NRO_SERIE,TELE_NEUMATICO4_PROFUNDIDAD,TELE_NEUMATICO4_POSICION,	
			TELE_NEUMATICO1_PRESION, TELE_NEUMATICO4_TEMPERATURA /*FRENO 4*/
	from GD1C2022.gd_esquema.Maestra
		WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_NEUMATICO4_NRO_SERIE IS NOT NULL
END 
GO     
--Telemetria freno
CREATE PROCEDURE migrar_telemetria_freno
AS 
BEGIN
	INSERT INTO telemetria_freno
	select TELE_AUTO_CODIGO ,TELE_FRENO1_NRO_SERIE,TELE_FRENO1_GROSOR_PASTILLA,TELE_FRENO1_TAMANIO_DISCO,
			TELE_FRENO1_POSICION,TELE_FRENO1_TEMPERATURA
	FROM GD1C2022.gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO1_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO2_NRO_SERIE,TELE_FRENO2_GROSOR_PASTILLA,TELE_FRENO2_TAMANIO_DISCO,
			TELE_FRENO2_POSICION,TELE_FRENO2_TEMPERATURA /*FRENO 2*/
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO2_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO3_NRO_SERIE,TELE_FRENO3_GROSOR_PASTILLA,TELE_FRENO3_TAMANIO_DISCO,
			TELE_FRENO3_POSICION,TELE_FRENO3_TEMPERATURA /*FRENO 3*/
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO3_NRO_SERIE IS NOT NULL
	UNION
	select TELE_AUTO_CODIGO ,TELE_FRENO4_NRO_SERIE,TELE_FRENO4_GROSOR_PASTILLA,TELE_FRENO4_TAMANIO_DISCO,
			TELE_FRENO4_POSICION,TELE_FRENO4_TEMPERATURA /*FRENO 4*/
	from GD1C2022.gd_esquema.Maestra
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	AND TELE_FRENO4_NRO_SERIE IS NOT NULL
	 
END


-- Revisar / Demasiadas filas.
GO
--Telemetria auto
CREATE PROCEDURE migrar_telemetria_auto
AS
BEGIN 

	INSERT INTO telemetria_auto
	(tele_auto_cod,vehiculo_numero,cod_escuderia,codigo_carrera,tele_fecha,tele_auto_numero_vuelta,codigo_sector,circuito_codigo,
	tele_auto_distancia_carrera,tele_auto_distancia_vuelta,tele_auto_tiempo_vuelta,tele_auto_posicion,
	tele_auto_combustible)
	SELECT TELE_AUTO_CODIGO,AUTO_NUMERO,cod_escuderia,CODIGO_CARRERA,CARRERA_FECHA,TELE_AUTO_NUMERO_VUELTA,CODIGO_SECTOR,CIRCUITO_CODIGO,
			TELE_AUTO_DISTANCIA_CARRERA,TELE_AUTO_DISTANCIA_VUELTA,TELE_AUTO_TIEMPO_VUELTA,TELE_AUTO_POSICION,
			TELE_AUTO_COMBUSTIBLE
	FROM GD1C2022.gd_esquema.Maestra
	JOIN escuderia e ON e.escuderia_nombre = GD1C2022.gd_esquema.Maestra.ESCUDERIA_NOMBRE 
	WHERE TELE_AUTO_CODIGO IS NOT NULL
	GROUP BY TELE_AUTO_CODIGO,AUTO_NUMERO,cod_escuderia,CODIGO_CARRERA,CARRERA_FECHA,TELE_AUTO_NUMERO_VUELTA,CODIGO_SECTOR,CIRCUITO_CODIGO,
			TELE_AUTO_DISTANCIA_CARRERA,TELE_AUTO_DISTANCIA_VUELTA,TELE_AUTO_TIEMPO_VUELTA,TELE_AUTO_POSICION,
			TELE_AUTO_COMBUSTIBLE
END 
GO


-- Incidente
CREATE PROCEDURE migrar_incidente
AS
    BEGIN
        INSERT INTO incidente
        (codigo_sector,circuito_codigo, codigo_carrera, tiempo_incidente,id_incidente_bandera)
        SELECT CODIGO_SECTOR,CIRCUITO_CODIGO, CODIGO_CARRERA, INCIDENTE_TIEMPO,ti.id_tipo_incidente
        FROM GD1C2022.gd_esquema.maestra
		JOIN tipo_incidente ti ON ti.descripcion = INCIDENTE_BANDERA
		GROUP BY CODIGO_SECTOR,CIRCUITO_CODIGO, CODIGO_CARRERA, INCIDENTE_TIEMPO,ti.id_tipo_incidente
    END
GO

-- Incidente por auto
CREATE PROCEDURE migrar_incidente_por_auto
AS
    BEGIN
        INSERT INTO incidente_por_auto
        (vehiculo_numero,numero_vuelta)
        SELECT AUTO_NUMERO,INCIDENTE_NUMERO_VUELTA
        FROM GD1C2022.gd_esquema.maestra
		WHERE AUTO_NUMERO IS NOT NULL
		GROUP BY AUTO_NUMERO, INCIDENTE_NUMERO_VUELTA
    END
GO
-- Vehiculo
CREATE PROCEDURE migrar_vehiculo
AS
BEGIN
        INSERT INTO vehiculo
        (vehiculo_numero,vehiculo_modelo)
        SELECT AUTO_NUMERO, AUTO_MODELO
        FROM GD1C2022.gd_esquema.maestra
		WHERE AUTO_NUMERO IS NOT NULL
		GROUP BY AUTO_NUMERO, AUTO_MODELO
END

GO
-- Neumatico
CREATE PROCEDURE migrar_neumatico --//TODO CHECK
AS
    BEGIN
        INSERT INTO neumatico
        (neumatico_nro_serie,id_tipo_neumatico)
        SELECT NEUMATICO1_NRO_SERIE_VIEJO,ti.id_tipo_neumatico
        FROM GD1C2022.gd_esquema.maestra
		JOIN tipo_neumatico ti ON NEUMATICO1_TIPO_VIEJO = ti.descripcion
		WHERE NEUMATICO1_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO2_NRO_SERIE_VIEJO,NEUMATICO2_TIPO_VIEJO
        FROM GD1C2022.gd_esquema.maestra
		WHERE NEUMATICO2_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO3_NRO_SERIE_VIEJO,NEUMATICO3_TIPO_VIEJO
        FROM GD1C2022.gd_esquema.maestra
		WHERE NEUMATICO3_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO4_NRO_SERIE_VIEJO,NEUMATICO4_TIPO_VIEJO
        FROM GD1C2022.gd_esquema.maestra
		WHERE NEUMATICO4_NRO_SERIE_VIEJO IS NOT NULL
        UNION
        SELECT NEUMATICO1_NRO_SERIE_NUEVO,NEUMATICO1_TIPO_NUEVO
        FROM GD1C2022.gd_esquema.maestra
		WHERE NEUMATICO1_NRO_SERIE_NUEVO IS NOT NULL
        UNION
        SELECT NEUMATICO2_NRO_SERIE_NUEVO,NEUMATICO2_TIPO_NUEVO
        FROM GD1C2022.gd_esquema.maestra
		WHERE NEUMATICO2_NRO_SERIE_NUEVO IS NOT NULL
        UNION
        SELECT NEUMATICO3_NRO_SERIE_NUEVO,NEUMATICO3_TIPO_NUEVO
        FROM GD1C2022.gd_esquema.maestra
		WHERE NEUMATICO3_NRO_SERIE_NUEVO IS NOT NULL
        UNION
        SELECT NEUMATICO4_NRO_SERIE_NUEVO,NEUMATICO4_TIPO_NUEVO
        FROM GD1C2022.gd_esquema.maestra
		WHERE NEUMATICO4_NRO_SERIE_NUEVO IS NOT NULL
END


GO
--Parada box por vehiculo
CREATE PROCEDURE migrar_parada_box_por_vehiculo
AS
BEGIN
	INSERT INTO parada_box_por_vehiculo
	(vehiculo_numero,nro_serie_neumatico_viejo,nro_serie_neumatico_nuevo)
	SELECT AUTO_NUMERO,NEUMATICO1_NRO_SERIE_VIEJO,NEUMATICO1_NRO_SERIE_NUEVO 
	FROM GD1C2022.gd_esquema.Maestra
	WHERE AUTO_NUMERO IS NOT NULL
	UNION
    SELECT AUTO_NUMERO,NEUMATICO2_NRO_SERIE_VIEJO,NEUMATICO2_TIPO_NUEVO
    FROM GD1C2022.gd_esquema.maestra
	WHERE AUTO_NUMERO IS NOT NULL
    UNION
    SELECT AUTO_NUMERO,NEUMATICO3_NRO_SERIE_VIEJO,NEUMATICO3_TIPO_NUEVO
    FROM GD1C2022.gd_esquema.maestra
	WHERE AUTO_NUMERO IS NOT NULL
    UNION
    SELECT AUTO_NUMERO,NEUMATICO4_NRO_SERIE_VIEJO,NEUMATICO4_TIPO_NUEVO
    FROM GD1C2022.gd_esquema.maestra
	WHERE AUTO_NUMERO IS NOT NULL
END 

------------------- EJECUCION DE STORED PROCEDURES: MIGRACION -------------------
BEGIN TRANSACTION
BEGIN TRY
    EXECUTE migrar_caja -- OK
    EXECUTE migrar_motor -- OK
    EXECUTE migrar_freno -- OK
    EXECUTE migrar_tipo_neumatico -- OK
    EXECUTE migrar_tipo_sector  -- OK
    EXECUTE migrar_tipo_incidente -- OK
    EXECUTE migrar_pais -- OK
    EXECUTE migrar_bandera -- OK
    EXECUTE migrar_escuderia -- OK
    EXECUTE migrar_piloto -- OK
	EXECUTE migrar_carrera -- Duplicado
	EXECUTE migrar_parada_box -- Duplicado foreign key
	EXECUTE migrar_sector -- Duplicado foreign key
	EXECUTE migrar_telemetria_caja -- Duplicado foreign key
	EXECUTE migrar_telemetria_motor -- Duplicado foreign key
	EXECUTE migrar_telemetria_neumatico -- Duplicado foreign key
	EXECUTE migrar_telemetria_freno -- Duplicado foreign key
	EXECUTE migrar_telemetria_auto -- Duplicado primary key
	EXECUTE migrar_circuito -- Tipo de dato erroneo
	EXECUTE migrar_incidente -- OK
	EXECUTE migrar_incidente_por_auto -- No se puede insertar el valor NULL en la columna 'cod_escuderia', tabla 'GRUPO_9800.dbo.incidente_por_auto'. La columna no admite valores NULL. Error de INSERT.
	EXECUTE migrar_vehiculo -- No se puede insertar el valor NULL en la columna 'cod_escuderia', tabla 'GRUPO_9800.dbo.vehiculo'. La columna no admite valores NULL. Error de INSERT.
	EXECUTE migrar_parada_box_por_vehiculo -- No se puede insertar el valor NULL en la columna 'cod_parada_box', tabla 'GRUPO_9800.dbo.parada_box_por_vehiculo'. La columna no admite valores NULL. Error de INSERT.
	EXECUTE migrar_neumatico -- Error de conversión al convertir el valor nvarchar 'Blando' al tipo de datos smallint.
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


DROP PROC migrar_Caja
DROP PROC migrar_Motor
DROP PROC migrar_Freno
DROP PROC migrar_Tipo_neumatico
DROP PROC migrar_Tipo_Sector
DROP PROC migrar_Tipo_incidente
DROP PROC migrar_Pais 
DROP PROC migrar_Bandera
DROP PROC migrar_Escuderia
DROP PROC migrar_Piloto
DROP PROC migrar_Carrera
DROP PROC migrar_Sector
DROP PROC migrar_Parada_box
DROP PROC migrar_Telemetria_caja
DROP PROC migrar_Telemetria_motor
DROP PROC migrar_Telemetria_neumatico
DROP PROC migrar_Telemetria_freno
DROP PROC migrar_Telemetria_auto
DROP PROC migrar_Circuito
DROP PROC migrar_incidente
DROP PROC migrar_Incidente_por_auto
DROP PROC migrar_Vehiculo
DROP PROC migrar_parada_box_por_vehiculo
DROP PROC migrar_Neumatico

SELECT * FROM CAJA
SELECT * FROM MOTOR
------------------- EJECUCION DE STORED PROCEDURES: MIGRACION -------------------
BEGIN TRANSACTION
BEGIN TRY

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
	EXECUTE migrar_Circuito
	EXECUTE migrar_incidente
	EXECUTE migrar_Incidente_por_auto
	EXECUTE migrar_Vehiculo
	EXECUTE migrar_parada_box_por_vehiculo
	EXECUTE migrar_Neumatico
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vacías o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

IF (EXISTS (SELECT 1 FROM GRUPO_9800.carrera)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.circuito)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.sector)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.incidente)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.vehiculo)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.escuderia)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.piloto)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.parada_box)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.neumatico)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.telemetria_auto)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.telemetria_motor)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.telemetria_neumatico)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.telemetria_freno)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.telemetria_caja)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.caja)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.motor)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.freno)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.incidente_por_auto)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.parada_box_por_auto)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.tipo_neumatico)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.tipo_sector)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.tipo_incidente)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.pais)
    AND EXISTS (SELECT 1 FROM GRUPO_9800.bandera))
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
