
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
            cod_escuderia INT NOT NULL IDENTITY PRIMARY KEY,
            escuderia_nombre NVARCHAR(255) NOT NULL,
            escuderia_nacionalidad NVARCHAR(255) NOT NULL
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
            cod_piloto INT NOT NULL IDENTITY PRIMARY KEY,
            piloto_nombre NVARCHAR(50) NOT NULL,
            piloto_apellido NVARCHAR(50) NOT NULL,
            piloto_nacionalidad NVARCHAR(50) NOT NULL,
            piloto_fecha_nacimiento DATETIME NOT NULL
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
            id_tipo_incidente SMALLINT NOT NULL IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) NOT NULL
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
            id_tipo_sector smallint NOT NULL IDENTITY PRIMARY KEY,
            descripcion NVARCHAR(255) NOT NULL
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
            id_tipo_neumatico smallint NOT NULL PRIMARY KEY,
            descripcion NVARCHAR(255) NOT NULL
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
            id_pais smallint NOT NULL IDENTITY PRIMARY KEY,
            nombre NVARCHAR(50) NOT NULL
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
            id_incidente_bandera INT IDENTITY NOT NULL PRIMARY KEY,
            incidente_bandera NVARCHAR(255) NOT NULL
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
            caja_nro_serie NVARCHAR NOT NULL PRIMARY KEY,
            caja_modelo NVARCHAR NOT NULL,
            caja_desgaste decimal(18,2) NOT NULL
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
            motor_nro_serie NVARCHAR NOT NULL PRIMARY KEY,
            motor_modelo NVARCHAR NOT NULL
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
            freno_nro_serie NVARCHAR NOT NULL PRIMARY KEY,
            freno_tamanio_pastilla decimal(18,2) NOT NULL
        );
END


EXEC CREATE_MASTER_TABLES
/*
DROP PROC CREATE_MASTER_TABLES
DROP PROC CREATE_TRANSACTIONAL_TABLES
*/