import { Controller, Post, Body } from '@nestjs/common';
import { DiagnosticoService } from './diagnostico.service';

@Controller('api/diagnostico')
export class DiagnosticoController {
    constructor(private readonly diagnosticoService: DiagnosticoService) {}

    @Post()
    realizarDiagnostico(@Body() sintomas: { sintomas: string[] }) {
      console.log(sintomas)
        return this.diagnosticoService.ejecutarDiagnostico(sintomas.sintomas);
    }
}
