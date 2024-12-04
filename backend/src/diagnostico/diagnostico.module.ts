import { Module } from '@nestjs/common';
import { DiagnosticoService } from './diagnostico.service';
import { DiagnosticoController } from './diagnostico.controller';

@Module({
  providers: [DiagnosticoService],
  controllers: [DiagnosticoController],
})
export class DiagnosticoModule {}
