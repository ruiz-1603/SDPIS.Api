// Convierte strings vacíos (o solo espacios) a null, recursivamente,
// según la regla general definida en HU-002.
export function normalizarCamposVacios(valor) {
  if (typeof valor === 'string') {
    return valor.trim() === '' ? null : valor;
  }
  if (Array.isArray(valor)) {
    return valor.map(normalizarCamposVacios);
  }
  if (valor && typeof valor === 'object') {
    return Object.fromEntries(Object.entries(valor).map(([clave, v]) => [clave, normalizarCamposVacios(v)]));
  }
  return valor;
}