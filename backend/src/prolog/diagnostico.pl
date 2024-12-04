% Base de Conocimiento para Diagnóstico de Fallos en Vehículos Diésel

% Hechos Dinámicos
:- dynamic sintoma/1.
:- dynamic pregunta/1.
:- dynamic verificar/1.

% ---- SÍNTOMAS ----
% Hechos sobre síntomas
sintoma(disminuye_varilla_aceite).
sintoma(gotea_aceite_desfogue_motor).
sintoma(bota_aceite_desfogue_motor).
sintoma(vapor_motor).
sintoma(rastro_aceite_motor).
sintoma(vehiculo_no_enciende).
sintoma(humo_negro_escape).
sintoma(consumo_excesivo_combustible).
sintoma(fallo_en_el_clutch).
sintoma(banda_de_distribucion_danada).
sintoma(fallo_sistema_lubricacion).
sintoma(mal_funcionamiento_radiador).

% ---- PREGUNTAS ----
% Hechos sobre preguntas a realizar
pregunta(ano_piston_mal_estado).
pregunta(piston_destrozado).
pregunta(camisa_destrozada).
pregunta(temperatura_motor_elevada).
pregunta(cabezote_bloque).
pregunta(empaquetadura_soplada).
pregunta(celda_radiador_tapada).
pregunta(motor_huele_quemado).
pregunta(anillos_mal_estado).
pregunta(asbesto_disco_embrague_mal_estado).
pregunta(banda_arrancada).
pregunta(dano_en_culata).
pregunta(filtro_aire_obstruido).

% ---- DIAGNÓSTICOS ----
% Reglas principales para identificar problemas basados en síntomas
problema(quema_aceite) :-
    tiene_sintomas([disminuye_varilla_aceite, gotea_aceite_desfogue_motor, bota_aceite_desfogue_motor]).

problema(vehiculo_recalentado) :-
    tiene_sintomas([vapor_motor, rastro_aceite_motor, vehiculo_no_enciende, motor_pierde_potencia, motor_se_apaga]).

problema(exceso_humo_negro) :-
    tiene_sintomas([humo_negro_escape]).

problema(consumo_excesivo_combustible) :-
    tiene_sintomas([consumo_excesivo_combustible]).

problema(fallo_en_el_clutch) :-
    tiene_sintomas([fallo_en_el_clutch]).

problema(banda_de_distribucion_danada) :-
    tiene_sintomas([banda_de_distribucion_danada]).

problema(fallo_sistema_lubricacion) :-
    tiene_sintomas([fallo_sistema_lubricacion]).

% ---- REGLAS AUXILIARES ----
% Verifica si los síntomas requeridos están presentes
tiene_sintomas([]).
tiene_sintomas([H|T]) :-
    sintoma(H),
    tiene_sintomas(T).

% ---- DIAGNÓSTICOS DETALLADOS ----
% Diagnóstico basado en preguntas específicas
diagnostico(Sintomas, Problema) :- 
    problema(Problema),
    tiene_sintomas(Sintomas),
    diagnostico_detallado(Problema).

% ---- VERIFICACIONES ----
% Verificaciones genéricas para cada problema
verificar_componentes(quema_aceite) :-
    verificar([revisar_desgaste_cilindro, revisar_estado_valvulas, revisar_sellos_valvulas]).

verificar_componentes(vehiculo_recalentado) :-
    verificar([nivel_refrigerante, fugas_refrigerante, estado_empaquetadura]).

verificar_componentes(exceso_humo_negro) :-
    verificar([endoscopia, prueba_compresion, analisis_aceite]).

verificar([]).
verificar([H|T]) :-
    verificar(H),
    verificar(T).

% ---- DIAGNÓSTICO FINAL ----
% Diagnóstico principal basado en la lista de síntomas recibidos
diagnosticar(Sintomas, Diagnostico) :-
    problema(Diagnostico),
    tiene_sintomas(Sintomas),
    diagnostico(Sintomas, Diagnostico).

% ---- CONSULTAS ----
% Ejemplo de cómo realizar consultas
% diagnosticar([disminuye_varilla_aceite, gotea_aceite_desfogue_motor], Diagnostico).
% Esto devolvería el diagnóstico 'quema_aceite' si se cumplen las condiciones.
