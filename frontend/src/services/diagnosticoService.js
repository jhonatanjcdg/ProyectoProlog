export async function obtenerDiagnostico(datos) {
    const API_URL = "http://localhost:3000/api/diagnostico"; // Asegúrate de que esta URL sea válida
    try {
      const response = await fetch(API_URL, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(datos),
      });
  
      if (!response.ok) {
        throw new Error("Error al obtener el diagnóstico");
      }
  
      return await response.json();
    } catch (error) {
      console.error("Error al obtener el diagnóstico:", error);
      throw error;
    }
  }
  