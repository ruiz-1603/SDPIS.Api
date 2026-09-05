import { normalizarCamposVacios } from '../utils/normalizarCamposVacios';

// TODO: reemplazar por la URL real del backend cuando exista POST /api/denuncias
const URL_API_DENUNCIAS = '/api/denuncias';
const USAR_MOCK = true;

export async function registrarDenuncia(datosFormulario) {
  const payload = normalizarCamposVacios(datosFormulario);

  if (USAR_MOCK) {
    await new Promise((resolve) => setTimeout(resolve, 600));
    return { numeroDenuncia: `SDPIS-${Date.now()}` };
  }

  const respuesta = await fetch(URL_API_DENUNCIAS, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(payload),
  });

  if (!respuesta.ok) {
    throw new Error('No fue posible registrar la denuncia');
  }

  return respuesta.json();
}