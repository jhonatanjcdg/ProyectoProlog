import { Module } from '@nestjs/common';
import { DiagnosticoController } from './diagnostico/diagnostico.controller';
import { DiagnosticoService } from './diagnostico/diagnostico.service';
import { PrologService } from './prolog/prolog.service';
import { DiagnosticoModule } from './diagnostico/diagnostico.module';

@Module({
  imports: [DiagnosticoModule],
  controllers: [DiagnosticoController],
  providers: [DiagnosticoService, PrologService],
})
export class AppModule {}
