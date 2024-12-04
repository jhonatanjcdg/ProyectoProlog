import { Injectable } from "@nestjs/common";
import { exec } from "child_process";

@Injectable()
export class DiagnosticoService {
  async ejecutarDiagnostico(sintomas: string[]) {
    // Prepara la lista de síntomas en formato de Prolog (cada uno con comillas simples)
    const sintomasProlog = sintomas.map(sintoma => `'${sintoma}'`).join(', ');

    // Construye el comando para ejecutar SWI-Prolog
    const cmd = `swipl -s "C:/Users/j3172/OneDrive/Documentos/Universidad/Octavo semestre/Sistemas basados en el Conocimiento/prolog/prolog/diagnostico.pl" -g "diagnosticar([${sintomasProlog}], Diagnostico), write(Diagnostico), nl." -t halt`;

    // Ejecuta el comando
    exec(cmd, (error, stdout, stderr) => {
      if (error) {
        console.error(`Error ejecutando Prolog: ${error}`);
        return;
      }
      if (stderr) {
        console.error(`Error en Prolog: ${stderr}`);
        return;
      }
      console.log(`Diagnóstico: ${stdout.trim()}`);
    });
  }
}
