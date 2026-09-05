// Validación mínima de formato, reutilizable en todo el formulario público
// (P16, HU-002, HU-004): un campo obligatorio no debe quedar vacío, ni
// compuesto solo de espacios, puntuación o caracteres sueltos sin sentido.
// No se exige un formato específico (p. ej. no se valida el tipo de
// documento de identificación: cédula/DIMEX/pasaporte/otro).

const LONGITUD_MINIMA_TEXTO = 3;
const LONGITUD_MINIMA_IDENTIFICACION = 7;

// Verdadero si el valor contiene al menos una letra o número real
// (rechaza "", "   ", "...", "-.-", pero acepta "N/A", "Ok", etc.)
function tieneContenidoSignificativo(valor) {
  return /[\p{L}\p{N}]/u.test(valor ?? '');
}

export function esCampoVacio(valor) {
  return (valor ?? '').toString().trim() === '';
}

// Válido para campos donde SÍ se exige contenido estrictamente numérico
// (p. ej. teléfono). No usar en identificación: cédula/DIMEX/pasaporte
// pueden incluir letras y no se les exige un formato específico (HU-002).
// Acepta dígitos, espacios y separadores comunes de teléfono (+, -, paréntesis).
const PATRON_TELEFONO = /^(?=(?:\D*\d){8,})[\d\s()+-]+$/;

export function esTelefonoValido(valor) {
  const texto = (valor ?? '').trim();
  if (texto === '') return true; // el teléfono es opcional
  return PATRON_TELEFONO.test(texto) && /\d/.test(texto);
}

// Validación mínima de formato para textos obligatorios (descripción del
// hecho, nombre completo, descripción del producto, etc.).
export function esTextoValido(valor, longitudMinima = LONGITUD_MINIMA_TEXTO) {
  const texto = (valor ?? '').trim();
  return texto.length >= longitudMinima && tieneContenidoSignificativo(texto);
}

// Número de identificación (HU-002): no vacío, no solo puntuación, longitud
// mínima razonable. No exige un formato específico por tipo de documento.
export function esIdentificacionValida(valor) {
  return esTextoValido(valor, LONGITUD_MINIMA_IDENTIFICACION);
}

export function hayErrores(errores) {
  return Object.keys(errores).length > 0;
}

// --- Paso 1: Ubicación y hecho ---------------------------------------------

// distritoAplica: false cuando el cantón seleccionado no tiene distritos
// definidos (algunos cantones no los tienen, según B02/HU-009).
export function validarUbicacion(ubicacion, { distritoAplica = false } = {}) {
  const errores = {};
  if (esCampoVacio(ubicacion.provincia)) errores.provincia = 'Seleccione una provincia.';
  if (esCampoVacio(ubicacion.canton)) errores.canton = 'Seleccione un cantón.';
  if (distritoAplica && esCampoVacio(ubicacion.distrito)) errores.distrito = 'Seleccione un distrito.';
  return errores;
}

export function validarHecho(hecho) {
  const errores = {};
  if (!esTextoValido(hecho.descripcion)) {
    errores.descripcion = 'Describa la problemática denunciada.';
  }
  return errores;
}

// --- Paso 2: Producto(s) -----------------------------------------------------

export function validarProducto(producto) {
  const errores = {};
  if (!esTextoValido(producto.nombre)) {
    errores.nombre = 'Ingrese el nombre del producto.';
  }
  if (!esTextoValido(producto.descripcion)) {
    errores.descripcion = 'Ingrese una descripción del producto.';
  }
  if (esCampoVacio(producto.tipoProducto)) {
    errores.tipoProducto = 'Seleccione el tipo de producto.';
  }
  if (!producto.motivos || producto.motivos.length === 0) {
    errores.motivos = 'Seleccione al menos un motivo de denuncia.';
  }
  return errores;
}

// Un objeto de errores por cada producto, en la misma posición del arreglo.
export function validarProductos(productos) {
  return productos.map(validarProducto);
}

export function hayErroresEnProductos(erroresProductos) {
  return erroresProductos.some(hayErrores);
}

// --- Paso 3: Denunciante ------------------------------------------------------

// Nombre e identificación solo son obligatorios en la denuncia confidencial;
// en la anónima no se solicitan y en la identificada ("normal") son opcionales.
export function validarDenunciante(denunciante) {
  const errores = {};
  if (denunciante.tipoTramite === 'confidencial') {
    if (!esTextoValido(denunciante.nombreCompleto)) {
      errores.nombreCompleto = 'Ingrese su nombre completo.';
    }
    if (!esIdentificacionValida(denunciante.numeroIdentificacion)) {
      errores.numeroIdentificacion = 'Ingrese un número de identificación válido.';
    }
  }
  if (!esTelefonoValido(denunciante.telefono)) {
    errores.telefono = 'Ingrese solo números en el teléfono.';
  }
  return errores;
}