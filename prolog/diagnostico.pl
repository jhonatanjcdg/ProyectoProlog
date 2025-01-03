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

% Quema de aceite
diagnostico_detallado(quema_aceite) :-
    write('El motor está quemando aceite. Esto puede deberse a anillos de pistón desgastados, cilindros rayados o sellos de válvula dañados.'),
    nl,
    write('Recomendación: Verifica el estado de los anillos, los cilindros y los sellos de válvula.').

% Vehículo recalentado
diagnostico_detallado(vehiculo_recalentado) :-
    write('El vehículo está recalentando. Las posibles causas incluyen un nivel bajo de refrigerante, fugas en el sistema de refrigeración o una empaquetadura soplada.'),
    nl,
    write('Recomendación: Revisa el nivel de refrigerante, busca fugas y verifica el estado de la empaquetadura.').

% Exceso de humo negro
diagnostico_detallado(exceso_humo_negro) :-
    write('Se detecta un exceso de humo negro en el escape. Esto suele indicar problemas con el sistema de inyección o un filtro de aire obstruido.'),
    nl,
    write('Recomendación: Limpia o reemplaza el filtro de aire y verifica los inyectores de combustible.').

% Fallo en el clutch
diagnostico_detallado(fallo_en_el_clutch) :-
    write('El sistema de clutch presenta fallos. Esto puede deberse a desgaste en el disco o en los resortes del plato de presión.'),
    nl,
    write('Recomendación: Inspecciona el estado del disco de clutch y el plato de presión.').

% Banda de distribución dañada
diagnostico_detallado(banda_de_distribucion_danada) :-
    write('La banda de distribución está dañada o desgastada. Esto puede causar desincronización en las válvulas y los pistones.'),
    nl,
    write('Recomendación: Cambia la banda de distribución y verifica el estado de los tensores.').

% Fallo en el sistema de lubricación
diagnostico_detallado(fallo_sistema_lubricacion) :-
    write('El sistema de lubricación no está funcionando correctamente. Esto puede deberse a un nivel bajo de aceite, filtros obstruidos o una bomba de aceite defectuosa.'),
    nl,
    write('Recomendación: Revisa el nivel y la calidad del aceite, cambia los filtros y verifica la bomba de aceite.').

% Consumo excesivo de combustible
diagnostico_detallado(consumo_excesivo_combustible) :-
    write('El consumo de combustible es excesivo. Esto puede deberse a una mala calibración en el sistema de inyección o a fugas en el tanque de combustible.'),
    nl,
    write('Recomendación: Calibra el sistema de inyección y verifica que no haya fugas en el sistema de combustible.').

% Diagnóstico genérico
diagnostico_detallado(_) :-
    write('No se cuenta con información detallada para este problema. Revisa los síntomas más comunes asociados al vehículo.').

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
