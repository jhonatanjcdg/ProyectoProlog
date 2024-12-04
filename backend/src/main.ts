import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { json } from 'stream/consumers';
import { rutasMiddleware } from './middlewares/middleware.rutas';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors()
  app.use(rutasMiddleware)
  await app.listen(3000);
}
bootstrap();
