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
-- 8. telemetria_auto ---> |
-- 9. telemetria_caja
-- 10. telemetria_motor
-- 11. telemetria_freno
-- 12. telemetria_neumatico
-- 13. incidente
-- 14. incidente_por_auto




ALTER PROC CREATE_TRANSACTIONAL_TABLES
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
        neumatico_nro_serie INT NOT NULL PRIMARY KEY,
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
            vehiculo_numero INT NOT NULL,
            cod_escuderia INT NOT NULL,
            codigo_carrera INT NOT NULL,
            tele_fecha smalldatetime NOT NULL,
            tele_auto_numero_vuelta numeric(18,0) NOT NULL,
            codigo_sector INT NOT NULL,
            tele_auto_distancia_carrera numeric(18,6) NOT NULL,
            tele_auto_distancia_vuelta numeric(18,2) NOT NULL,
            tele_auto_tiempo_vuelta numeric(18,10) NOT NULL,
            tele_auto_posicion numeric(18,0) NOT NULL,
            tele_auto_velocidad numeric(18,2) NOT NULL,
            tele_auto_combustible numeric(18,2) NOT NULL,
            caja_nro_serie NVARCHAR NOT NULL,
            motor_nro_serie NVARCHAR NOT NULL,
            neumatico_nro_serie NVARCHAR NOT NULL,
            freno_nro_serie NVARCHAR NOT NULL
    );

    ALTER TABLE telemetria_auto
    ADD CONSTRAINT FK_TelemetriaautoAuto
    FOREIGN KEY (vehiculo_numero,cod_escuderia) REFERENCES vehiculo(vehiculo_numero,cod_escuderia);


END