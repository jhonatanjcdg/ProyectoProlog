import { IsArray, IsString } from 'class-validator';

export class DiagnosticoDto {
  @IsArray()
  @IsString({ each: true })
  sintomas: string[];
}