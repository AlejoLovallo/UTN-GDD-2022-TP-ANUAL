-- TABLAS MAESTRAS

-- 1. Escuderia ---> check
-- 2. Piloto ----> check
-- 3. Tipo Incidente --> check
-- 4. Tipo sector --> check
-- 5. Tipo neumatico --> check
-- 6. Pais ---> check
-- 7. Bandera ---> check
-- 8. Caja --> check
-- 9. Motor --> check
-- 10.Freno --> check

-- TABLAS TRANSACCIONALES
-- 1. neumatico ---> check
-- 2. vehiculo --> check
-- 3. circuito  --> check
-- 4. carrera ---> check
-- 5. sector ---> check
-- 6. parada_box --> check
-- 7. parada_box_x_vehiculo ---> check
-- 8. telemetria_auto ---> check
-- 9. telemetria_caja  ---> check
-- 10. telemetria_motor --> check
-- 11. telemetria_freno --> check
-- 12. telemetria_neumatico --> check
-- 13. incidente ---> check
-- 14. incidente_por_auto --> check
 USE [GRUPO_9800]

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
        neumatico_nro_serie NVARCHAR NOT NULL PRIMARY KEY,
        neumatico_estado NVARCHAR NOT NULL,
        neumatico_profundidad decimal(18,2) NOT NULL,
        id_tipo_neumatico smallint NOT NULL
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
            vehiculo_numero INT NOT NULL,
            vehiculo_modelo NVARCHAR(255) NOT NULL,
            cod_escuderia INT NOT NULL,
            cod_piloto INT NOT NULL,
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
            circuito_codigo INT NOT NULL PRIMARY KEY,
            circuito_nombre NVARCHAR NOT NULL,
            id_pais smallint NOT NULL,
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
        codigo_carrera INT NOT NULL PRIMARY KEY,
        carrera_fecha smalldatetime NOT NULL,
        carrera_clima varchar(100) NOT NULL,
        carrera_total_carrera numeric(18,2) NOT NULL,
        carrera_cant_vueltas INT NOT NULL,
        circuito_codigo INT NOT NULL
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
            codigo_sector INT NOT NULL,
            sector_distancia numeric(18,2) NOT NULL,
            id_tipo_sector smallint NOT NULL,
            circuito_codigo INT NOT NULL,
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
            cod_parada_box INT IDENTITY NOT NULL PRIMARY KEY,
            parada_box_vuelta numeric(18,0) NOT NULL,
            parada_box_tiempo numeric(18,2) NOT NULL,
            codigo_carrera INT NOT NULL,
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
            cod_parada_box INT NOT NULL,
            vehiculo_numero INT NOT NULL,
            cod_escuderia INT NOT NULL,
            nro_serie_neumatico_viejo NVARCHAR NOT NULL,
            nro_serie_neumatico_nuevo NVARCHAR NULL,
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
            tele_auto_cod INT NOT NULL PRIMARY KEY,
            tele_fecha smalldatetime NOT NULL,
            tele_auto_numero_vuelta numeric(18,0) NOT NULL,
            tele_auto_distancia_carrera numeric(18,6) NOT NULL,
            tele_auto_distancia_vuelta numeric(18,2) NOT NULL,
            tele_auto_tiempo_vuelta numeric(18,10) NOT NULL,
            tele_auto_posicion numeric(18,0) NOT NULL,
            tele_auto_velocidad numeric(18,2) NOT NULL,
            tele_auto_combustible numeric(18,2) NOT NULL,
            vehiculo_numero INT NOT NULL,
            cod_escuderia INT NOT NULL,
            codigo_carrera INT NOT NULL,
            codigo_sector INT NOT NULL,
            circuito_codigo INT NOT NULL,
            caja_nro_serie NVARCHAR NOT NULL,
            motor_nro_serie NVARCHAR NOT NULL,
            neumatico_nro_serie NVARCHAR NOT NULL,
            freno_nro_serie NVARCHAR NOT NULL
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

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoCaja
    FOREIGN KEY(caja_nro_serie) REFERENCES caja(caja_nro_serie);

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoMotor
    FOREIGN KEY(motor_nro_serie) REFERENCES motor(motor_nro_serie);

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoNeumatico
    FOREIGN KEY(neumatico_nro_serie) REFERENCES neumatico(neumatico_nro_serie);

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoFreno
    FOREIGN KEY(freno_nro_serie) REFERENCES freno(freno_nro_serie);

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
            tele_auto_cod INT NOT NULL,
            caja_nro_serie NVARCHAR NOT NULL,
            tele_caja_temp_aceite numeric(18,2) NOT NULL,
            tele_caja_rpm numeric(18,2) NOT NULL,
            tele_caja_desgaste numeric(18,2) NOT NULL,
            PRIMARY KEY (tele_auto_cod, caja_nro_serie)
    );

    ALTER TABLE telemetria_caja
    ADD CONSTRAINT FK_Telemetriacaja_Telemetriaauto
    FOREIGN KEY (tele_auto_cod) REFERENCES telemetria_auto(tele_auto_cod);

    ALTER TABLE telemetria_caja
    ADD CONSTRAINT FK_TelemetriacajaCaja
    FOREIGN KEY (caja_nro_serie) REFERENCES caja(caja_nro_serie);

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
        tele_auto_cod INT NOT NULL,
        motor_nro_serie NVARCHAR NOT NULL,
        tele_motor_potencia numeric(18,6) NOT NULL,
        tele_motor_temp_aceite numeric(18,6) NOT NULL,
        tele_motor_temp_agua numeric(18,6) NOT NULL,
        tele_motor_rpm numeric(18,6) NOT NULL,
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
        tele_auto_cod INT NOT NULL,
        freno_nro_serie NVARCHAR NOT NULL,
        tele_freno_grosor_pastilla decimal(18,2) NOT NULL,
        tele_freno_tamanio_disco decimal(18,2) NOT NULL,
        tele_freno_posicion NVARCHAR NOT NULL,
        tele_freno_temperatura numeric(18,2) NOT NULL,
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
        tele_auto_cod INT NOT NULL,
        neumatico_nro_serie NVARCHAR NOT NULL,
        tele_neumatico_profundidad numeric(18,6) NOT NULL,
        tele_neumatico_posicion NVARCHAR NOT NULL,
        tele_neumatico_presion numeric(18,6) NOT NULL,
        tele_neumatico_temperatura numeric(18,6) NOT NULL,
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
        cod_incidente INT IDENTITY NOT NULL PRIMARY KEY,
        codigo_sector INT NOT NULL,
        circuito_codigo INT NOT NULL,
        codigo_carrera INT NOT NULL,
        tiempo_incidente decimal(18,2) NOT NULL,
        id_incidente_bandera INT NOT NULL,
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
        vehiculo_numero INT NOT NULL,
        cod_escuderia INT NOT NULL,
        cod_incidente INT NOT NULL,
        id_tipo_incidente smallint NOT NULL,
        numero_vuelta numeric NOT NULL,
        PRIMARY KEY (vehiculo_numero, cod_escuderia, cod_incidente)
    );

    ALTER TABLE incidente_por_auto
    ADD CONSTRAINT FK_IncidenteporautoVehiculo
    FOREIGN KEY (vehiculo_numero,cod_escuderia) REFERENCES vehiculo(vehiculo_numero,cod_escuderia);

    ALTER TABLE incidente_por_auto
    ADD CONSTRAINT FK_IncidenteporautoIncidente
    FOREIGN KEY(cod_incidente) REFERENCES incidente(cod_incidente);    
END

