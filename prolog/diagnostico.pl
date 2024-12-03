% Hechos: Síntomas observados
sintoma(disminuye_varilla_aceite).
sintoma(gotea_aceite_desfogue_motor).
sintoma(bota_aceite_desfogue_motor).

% Reglas: Diagnóstico según los síntomas
problema(quema_aceite) :-
    sintoma(disminuye_varilla_aceite),
    sintoma(gotea_aceite_desfogue_motor),
    sintoma(bota_aceite_desfogue_motor).

% Hechos: Diagnóstico de las preguntas
pregunta(ano_piston_mal_estado).
pregunta(piston_destrozado).
pregunta(camisa_destrozada).

% Reglas de diagnóstico detallado
diagnostico(quema_aceite) :-
    pregunta(ano_piston_mal_estado),
    pregunta(piston_destrozado),
    pregunta(camisa_destrozada),
    problema(quema_aceite).

% Reglas para revisar las causas
revisar(diagnostico) :-
    revisar_desgaste_cilindro,
    revisar_estado_valvulas,
    revisar_estado_guias,
    revisar_sellos_valvulas.

% Hechos de revisión para diagnóstico
revisar_desgaste_cilindro.
revisar_estado_valvulas.
revisar_estado_guias.
revisar_sellos_valvulas.

% problema(quema_aceite).
% diagnostico(quema_aceite).
% revisar(diagnostico).

-----------------------------------------------------------------

% Hechos: Síntomas observados
sintoma(vapor_motor).
sintoma(rastro_aceite_motor).
sintoma(vehiculo_no_enciende).
sintoma(ruido_extraño_motor).
sintoma(motor_pierde_potencia).
sintoma(motor_se_apaga).

% Regla principal para diagnosticar "Vehículo recalentado"
problema(vehiculo_recalentado) :-
    sintoma(vapor_motor),
    sintoma(rastro_aceite_motor),
    sintoma(vehiculo_no_enciende),
    sintoma(ruido_extraño_motor),
    sintoma(motor_pierde_potencia),
    sintoma(motor_se_apaga).

% Hechos: Preguntas de diagnóstico
pregunta(temperatura_motor_elevada).
pregunta(cabezote_bloque).
pregunta(empaquetadura_soplada).
pregunta(celda_radiador_cuña).
pregunta(celda_radiador_tapada).
pregunta(termostato_pegado).
pregunta(manguera_tapada).
pregunta(cabezote_pandeado).
pregunta(torcedura_culata).
pregunta(motor_huele_quemado).
pregunta(torcedura_biela).
pregunta(pistones_recalentados).
pregunta(camisa_bajada_milesimas).
pregunta(cilindro_bajado_milesimas).

% Regla para verificar que el vehículo está recalentado basado en el diagnóstico
diagnostico(vehiculo_recalentado) :-
    pregunta(temperatura_motor_elevada),
    pregunta(cabezote_bloque),
    pregunta(empaquetadura_soplada),
    pregunta(celda_radiador_cuña),
    pregunta(celda_radiador_tapada),
    pregunta(termostato_pegado),
    pregunta(manguera_tapada),
    pregunta(cabezote_pandeado),
    pregunta(torcedura_culata),
    pregunta(motor_huele_quemado),
    pregunta(torcedura_biela),
    pregunta(pistones_recalentados),
    pregunta(camisa_bajada_milesimas),
    pregunta(cilindro_bajado_milesimas),
    problema(vehiculo_recalentado).

% Hechos: Verificación de las causas posibles
verificar(nivel_refrigerante).
verificar(fugas_refrigerante).
verificar(fugas_aceite).
verificar(estado_empaquetadura).
verificar(estado_termostato).
verificar(estado_manguera).
verificar(estado_celdas_radiador).
verificar(ruidos_motor).

% Regla de verificación completa
verificar_componentes :-
    verificar(nivel_refrigerante),
    verificar(fugas_refrigerante),
    verificar(fugas_aceite),
    verificar(estado_empaquetadura),
    verificar(estado_termostato),
    verificar(estado_manguera),
    verificar(estado_celdas_radiador),
    verificar(ruidos_motor).

% problema(vehiculo_recalentado).

% diagnostico(vehiculo_recalentado).

% verificar_componentes.

----------------------------------------------------------------

% Hechos: Síntomas observados
sintoma(humo_negro_escape).

% Regla principal para diagnosticar "Exceso de humo negro"
problema(exceso_humo_negro) :-
    sintoma(humo_negro_escape).

% Hechos: Preguntas de diagnóstico
pregunta(cilindros_mal_estado).
pregunta(anillos_mal_estado).
pregunta(pistones_mal_estado).
pregunta(aros_mal_estado).
pregunta(anillo_partido).
pregunta(aro_partido).

% Regla para verificar que el vehículo tiene exceso de humo negro basado en las preguntas de diagnóstico
diagnostico(exceso_humo_negro) :-
    pregunta(cilindros_mal_estado),
    pregunta(anillos_mal_estado),
    pregunta(pistones_mal_estado),
    pregunta(aros_mal_estado),
    pregunta(anillo_partido),
    pregunta(aro_partido),
    problema(exceso_humo_negro).

% Hechos: Acciones de verificación
verificar(endoscopia).
verificar(prueba_compresion).
verificar(analisis_aceite).

% Regla de verificación completa
verificar_componentes :-
    verificar(endoscopia),
    verificar(prueba_compresion),
    verificar(analisis_aceite).

% problema(exceso_humo_negro).

% diagnostico(exceso_humo_negro).

% verificar_componentes.

----------------------------------------------------------------

% Hechos: Síntomas observados
sintoma(consumo_excesivo_combustible).

% Regla principal para diagnosticar "Consumo excesivo de combustible"
problema(consumo_excesivo_combustible) :-
    sintoma(consumo_excesivo_combustible).

% Hechos: Preguntas de diagnóstico
pregunta(bomba_inyeccion_mal_estado).
pregunta(danio_inyectores).
pregunta(goteo_inyectores).
pregunta(inyectores_pulverizan_bien).
pregunta(inyectores_queman_bien_piston).
pregunta(inyectores_queman_bien_camara_piston).
pregunta(motor_sin_termostato).
pregunta(motor_falta_compresion).
pregunta(motor_mal_asientos_valvulas).
pregunta(asientos_valvulas_tragados).
pregunta(filtro_aire_obstruido).
pregunta(juntas_inyectores_danadas).

% Regla para verificar que el vehículo tiene consumo excesivo de combustible basado en las preguntas de diagnóstico
diagnostico(consumo_excesivo_combustible) :-
    pregunta(bomba_inyeccion_mal_estado),
    pregunta(danio_inyectores),
    pregunta(goteo_inyectores),
    pregunta(inyectores_pulverizan_bien),
    pregunta(inyectores_queman_bien_piston),
    pregunta(inyectores_queman_bien_camara_piston),
    pregunta(motor_sin_termostato),
    pregunta(motor_falta_compresion),
    pregunta(motor_mal_asientos_valvulas),
    pregunta(asientos_valvulas_tragados),
    pregunta(filtro_aire_obstruido),
    pregunta(juntas_inyectores_danadas),
    problema(consumo_excesivo_combustible).

% Hechos: Acciones de verificación
verificar(inspeccionar_inyectores).
verificar(prueba_presion_sistema_combustible).
verificar(medir_compresion_motor).
verificar(revisar_filtro_aire).

% Regla de verificación completa
verificar_componentes :-
    verificar(inspeccionar_inyectores),
    verificar(prueba_presion_sistema_combustible),
    verificar(medir_compresion_motor),
    verificar(revisar_filtro_aire).

%problema(consumo_excesivo_combustible).

% diagnostico(consumo_excesivo_combustible).

% verificar_componentes.

----------------------------------------------------------------

% Hechos: Síntomas observados
sintoma(fallo_en_el_clutch).

% Regla principal para diagnosticar "Fallo en el clutch"
problema(fallo_en_el_clutch) :-
    sintoma(fallo_en_el_clutch).

% Hechos: Preguntas de diagnóstico
pregunta(asbesto_disco_embrague_mal_estado).
pregunta(prensa_embrague_buen_estado).
pregunta(disco_embrague_deforme).
pregunta(disco_embrague_desintegrado).
pregunta(disco_embrague_desarmado).
pregunta(resortes_zafados_plato_presion).

% Hechos: Preguntas de diagnóstico
pregunta(asbesto_disco_embrague_mal_estado).
pregunta(prensa_embrague_buen_estado).
pregunta(disco_embrague_deforme).
pregunta(disco_embrague_desintegrado).
pregunta(disco_embrague_desarmado).
pregunta(resortes_zafados_plato_presion).

% Hechos: Acciones de verificación
verificar(inspeccionar_disco_embrague).
verificar(verificar_prensa_embrague).
verificar(revisar_resortes_plato_presion).

% Regla de verificación completa
verificar_componentes :-
    verificar(inspeccionar_disco_embrague),
    verificar(verificar_prensa_embrague),
    verificar(revisar_resortes_plato_presion).

% problema(fallo_en_el_clutch).

% diagnostico(fallo_en_el_clutch).

% verificar_componentes.

----------------------------------------------------------------

% Hechos: Síntomas observados
sintoma(banda_de_distribucion_danada).

% Regla principal para diagnosticar "Banda de distribución dañada"
problema(banda_de_distribucion_danada) :-
    sintoma(banda_de_distribucion_danada).

% Hechos: Preguntas de diagnóstico
pregunta(banda_arrancada).
pregunta(dientes_banda_desgastados).
pregunta(torcedura_valvulas_cilindro).
pregunta(valvulas_danadas).
pregunta(pistones_danados).

% Regla para verificar que el vehículo tiene una banda de distribución dañada basado en las preguntas de diagnóstico
diagnostico(banda_de_distribucion_danada) :-
    pregunta(banda_arrancada),
    pregunta(dientes_banda_desgastados),
    pregunta(torcedura_valvulas_cilindro),
    pregunta(valvulas_danadas),
    pregunta(pistones_danados),
    problema(banda_de_distribucion_danada).

% Hechos: Acciones de verificación
verificar(inspeccionar_banda_distribucion).
verificar(retirar_tapa_valvulas).
verificar(medir_compresion_motor).

% Regla de verificación completa
verificar_componentes :-
    verificar(inspeccionar_banda_distribucion),
    verificar(retirar_tapa_valvulas),
    verificar(medir_compresion_motor).

% problema(banda_de_distribucion_danada).

% diagnostico(banda_de_distribucion_danada).

% verificar_componentes.

----------------------------------------------------------------

% Hechos: Síntomas observados
sintoma(fallo_sistema_lubricacion).

% Regla principal para diagnosticar "Fallo en el sistema de lubricación"
problema(fallo_sistema_lubricacion) :-
    sintoma(fallo_sistema_lubricacion).

% Hechos: Preguntas de diagnóstico
pregunta(dano_en_culata).
pregunta(falla_en_cojineteria).
pregunta(falla_en_bomba_aceite).
pregunta(obstruccion_en_tubo_succion).
pregunta(lubricante_inadecuado).
pregunta(casqueteria_biela_bancada_girada).
pregunta(casquetes_biela_girados).
pregunta(casquetes_eje_levas_girados).
pregunta(pistones_pegados).
pregunta(bielas_torcida).
pregunta(cigueñal_torcido).
pregunta(motor_desvielado).

% Regla para verificar que el vehículo tiene un fallo en el sistema de lubricación basado en las preguntas de diagnóstico
diagnostico(fallo_sistema_lubricacion) :-
    pregunta(dano_en_culata),
    pregunta(falla_en_cojineteria),
    pregunta(falla_en_bomba_aceite),
    pregunta(obstruccion_en_tubo_succion),
    pregunta(lubricante_inadecuado),
    pregunta(casqueteria_biela_bancada_girada),
    pregunta(casquetes_biela_girados),
    pregunta(casquetes_eje_levas_girados),
    pregunta(pistones_pegados),
    pregunta(bielas_torcida),
    pregunta(cigueñal_torcido),
    pregunta(motor_desvielado),
    problema(fallo_sistema_lubricacion).

% Hechos: Acciones de verificación
verificar(inspeccionar_nivel_aceite).
verificar(inspeccionar_presion_aceite).
verificar(inspeccionar_fugas_aceite).
verificar(retirar_tapa_valvulas).
verificar(desmontar_motor).

% Regla de verificación completa
verificar_componentes :-
    verificar(inspeccionar_nivel_aceite),
    verificar(inspeccionar_presion_aceite),
    verificar(inspeccionar_fugas_aceite),
    verificar(retirar_tapa_valvulas),
    verificar(desmontar_motor).

% problema(fallo_sistema_lubricacion).

% diagnostico(fallo_sistema_lubricacion).

% verificar_componentes.

----------------------------------------------------------------

% Hechos: Síntomas observados
sintoma(mal_funcionamiento_radiador).