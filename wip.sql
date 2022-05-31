use GD1C2022
------------------- DROP DE TABLAS -------------------
DROP TABLE TELEMETRIA_CARRERA.TELEMETRIA_CARRERA.carrera;
DROP TABLE TELEMETRIA_CARRERA.circuito;
DROP TABLE TELEMETRIA_CARRERA.sector;
DROP TABLE TELEMETRIA_CARRERA.incidente;
DROP TABLE TELEMETRIA_CARRERA.auto;
DROP TABLE TELEMETRIA_CARRERA.escuderia;
DROP TABLE TELEMETRIA_CARRERA.piloto;
DROP TABLE TELEMETRIA_CARRERA.parada_box;
DROP TABLE TELEMETRIA_CARRERA.neumatico;
DROP TABLE TELEMETRIA_CARRERA.telemetria_auto;
DROP TABLE TELEMETRIA_CARRERA.telemetria_motor;
DROP TABLE TELEMETRIA_CARRERA.telemetria__neumatico;
DROP TABLE TELEMETRIA_CARRERA.telemetria_freno;
DROP TABLE TELEMETRIA_CARRERA.telemetria_caja;
DROP TABLE TELEMETRIA_CARRERA.caja;
DROP TABLE TELEMETRIA_CARRERA.motor;
DROP TABLE TELEMETRIA_CARRERA.freno;
DROP TABLE TELEMETRIA_CARRERA.incidente_por_auto;
DROP TABLE TELEMETRIA_CARRERA.parada_box_por_auto;
DROP TABLE TELEMETRIA_CARRERA.tipo_neumatico;
DROP TABLE TELEMETRIA_CARRERA.tipo_sector;
DROP TABLE TELEMETRIA_CARRERA.tipo_incidente;
DROP TABLE TELEMETRIA_CARRERA.pais;
DROP TABLE TELEMETRIA_CARRERA.bandera;

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