import React, { useState } from 'react';
import { obtenerDiagnostico } from '../services/DiagnosticoService';

const DiagnosticoForm = () => {
  const [sintomas, setSintomas] = useState('');
  const [diagnostico, setDiagnostico] = useState('');

  const handleSubmit = async (event) => {
    event.preventDefault();
    const datos = { sintomas: ['humo_negro_escape'] };
    try {
      const resultado = await obtenerDiagnostico(datos);
      console.log("Diagnóstico:", resultado);
    } catch (error) {
      console.error("Error:", error.message);
    }
  };

  return (
    <div>
      <h1>Diagnóstico de Fallos en el Vehículo</h1>
      <form onSubmit={handleSubmit}>
        <textarea
          value={sintomas}
          onChange={(e) => setSintomas(e.target.value)}
          placeholder="Ingresa los síntomas (uno por línea)"
          rows={10}
          cols={50}
        />
        <button type="submit">Obtener Diagnóstico</button>
      </form>

      {diagnostico && (
        <div>
          <h3>Diagnóstico:</h3>
          <p>{diagnostico}</p>
        </div>
      )}
    </div>
  );
};

export default DiagnosticoForm;
