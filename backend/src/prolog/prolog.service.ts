import { Injectable } from '@nestjs/common';
import { exec } from 'child_process';
import * as path from 'path';
import { promisify } from 'util';

const execPromise = promisify(exec);

@Injectable()
export class PrologService {
  ejecutarDiagnostico(sintomas: string[]): Promise<string> {
    const archivoProlog = 
      'C:/Users/j3172/OneDrive/Documentos/Universidad/Octavo semestre/Sistemas basados en el Conocimiento/prolog/prolog/diagnostico.pl'

      sintomas = ['fallo_sistema_lubricacion']
    // Asegurarse de formatear los síntomas con comillas simples
    const sintomasStr = sintomas.map((s) => `'${s}'`).join(',');
    
    // Envolver la ruta del archivo en comillas dobles
    const comando = `swipl [diagnostico]. -g diagnosticar([${sintomasStr}]).`;

    return new Promise((resolve, reject) => {
      exec(comando, (error, stdout, stderr) => {
        if (error) {
          console.error('Error ejecutando Prolog:', error);
          reject(new Error('Error al ejecutar Prolog'));
        } else {
          resolve(stdout.trim());
        }
      });
    });
  }
}
