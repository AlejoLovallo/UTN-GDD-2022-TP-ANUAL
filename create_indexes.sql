/**
CUANDO NO CREAR INDICES

- TABLAS CHICAS
- TABLAS QUE TENGAN MUCHOS CAMBIOS CONSTANTES
- NO CREAR INDICES EN COLUMNAS QUE TENGAN MUCHOS VALORES NULOS.
- NO CREAR INDICES EN COLUMNAS QUE SON FRECUENTEMENTE UPDETEADAS.

------------------------------ INDICES TABLAS MAESTRAS
-- 1. Escuderia:

Al haber puesto IDENTITY al codigo escuderia se crea un indice implicito sobre ese campo.
No es necesario agregar nada.

-- 2. Piloto:

Sucede algo similar que en el caso anterior, a lo sumo se podria agregar que busque siempre
por nacionalidad. En tal caso quedaria de la siguiente forma (para mi no pero bueno se los dejo): 

CREATE INDEX INDEX_PILOTO 
ON piloto(cod_piloto,piloto_nacionalidad);

-- 3. Tipo Incidente:

No es necesario aca hacer nada. 

-- 4. Tipo sector:

Nada.

-- 5. Tipo neumatico:

Nada.

-- 6. Pais:

Nada.

-- 7. Bandera:

Nada.


-- 8. Caja: aca si se podria hacer que busque tambien por el modelo. Tambien a revisar.

CREATE INDEX INDEX_CAJA 
ON piloto(caja_nro_serie,caja_modelo);

-- 9. Motor: Lo mismo

CREATE INDEX INDEX_MOTOR 
ON piloto(caja_nro_serie,motor_modelo);

-- 10.Freno:

NADA.
------------------------------ INDICES TABLAS TRANSACCIONALES

-- 1. neumatico: NADA.

-- 2. vehiculo:

Aca si, yo creo que puede haber varias opciones.

CREATE INDEX INDEX_VEHICULO 
ON vehiculo(vehiculo_modelo);

CREATE INDEX INDEX_VEHICULO
ON vehiculo(vehiculo_modelo,cod_escuderia). // ESTE IGUAL CHEQUEEN QUE NO ESTE IMPLICITO.

-- 3. circuito: nada

-- 4. carrera: nada

-- 5. sector:

para mi nada.

-- 6. parada_box:

nada o se podria indexar por carrera.

CREATE INDEX INDEX_PARADA_BOX
ON parada_box(codigo_carrera);

-- 7. parada_box_x_vehiculo:

Fijense si el implicito filtra por todo la pk (las 3 compuestas),
en tal caso nada.

-- 8. telemetria_auto:

CREATE INDEX INDEX_TELE_AUTO
ON telemetria_auto(vehiculo_numero,cod_escuderia);

CREATE INDEX INDEX_TELE_AUTO_II
ON telemetria_auto(vehiculo_numero,cod_escuderia,cod_carrera);

CREATE INDEX INDEX_TELE_AUTO_III
ON telemetria_auto(cod_sector,cod_carrera);

CREATE INDEX INDEX_TELE_AUTO_IV
ON telemetria_auto(cod_sector,circuito_codigo);

-- 9. telemetria_caja:
NADA.

-- 10. telemetria_motor:

CREATE INDEX INDEX_TELE_MOTOR
ON telemetria_motor(motor_potencia);

CREATE INDEX INDEX_TELE_MOTOR
ON telemetria_motor(motor_rpm);

-- 11. telemetria_freno:

CREATE INDEX INDEX_TELE_FRENO
ON telemetria_freno(tele_freno_tamanio_disco);

CREATE INDEX INDEX_TELE_FRENO
ON telemetria_freno(tele_freno_grosor_pastilla);

-- 12. telemetria_neumatico:
nada.

-- 13. incidente :


CREATE INDEX INDEX_INCIDENTE
ON incidente(circuito_codigo,codigo_sector);

CREATE INDEX INDEX_INCIDENTE
ON incidente(codigo_carrera,codigo_sector);

CREATE INDEX INDEX_INCIDENTE
ON incidente(codigo_carrera);


-- 14. incidente_por_auto 

CREATE INDEX INDEX_TIPO_INCIDENTE
ON incidente_por_auto(id_tipo_incidente);


**/