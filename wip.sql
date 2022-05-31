use GD1C2022
------------------- DROP DE TABLAS -------------------
DROP TABLE escuderia;
DROP TABLE piloto;
DROP TABLE tipo_incidente;
DROP TABLE tipo_sector;
DROP TABLE tipo_neumatico;
DROP TABLE bandera;
DROP TABLE caja;
DROP TABLE motor;
DROP TABLE freno;
DROP TABLE carrera;
DROP TABLE circuito;
DROP TABLE pais;

------------------- DROP DE PROCEDURES -------------------
DROP PROCEDURE migrar_caja
DROP PROCEDURE migrar_motor 
DROP PROCEDURE migrar_freno 
DROP PROCEDURE migrar_tipo_neumatico 
DROP PROCEDURE migrar_tipo_sector 
DROP PROCEDURE migrar_tipo_incidente 
DROP PROCEDURE migrar_pais 
DROP PROCEDURE migrar_bandera 
DROP PROCEDURE migrar_escuderia
DROP PROCEDURE migrar_piloto
DROP PROCEDURE migrar_carrera
DROP PROCEDURE migrar_parada_box
DROP PROCEDURE migrar_sector
DROP PROCEDURE migrar_telemetria_caja
DROP PROCEDURE migrar_telemetria_motor
DROP PROCEDURE migrar_telemetria_neumatico
DROP PROCEDURE migrar_telemetria_freno
DROP PROCEDURE migrar_telemetria_auto

------------------- DROP DE VISTAS -------------------
-- DROP VIEW TELEMETRIA_CARRERA.nobre_vista;

------------------- DROP DE INDICES -------------------
-- DROP INDEX TELEMETRIA_CARRERA.tabla.index_name;