import { normalizarCamposVacios } from '../utils/normalizarCamposVacios';

const URL_API_DENUNCIAS = 'http://localhost:5290/api/denuncias';
const USAR_MOCK = false;

const MOTIVOS_MAP = {
  'Etiqueta muestra indicaciones no aprobadas en el registro sanitario': 1,
  'Etiqueta no indica el número de registro sanitario (no aplica para cosméticos)': 2,
  'Etiqueta sin número de lote, fecha de vencimiento, fabricante': 3,
  'Mal estado de productos (defectuoso, contaminado, deteriorado)': 4,
  'Producto bajo alerta sanitaria': 5,
  'Producto con problema de calidad': 6,
  'Producto para modalidad de venta en sitios no autorizados': 7,
  'Producto sin registro sanitario': 8,
  'Publicidad engañosa': 9,
  'Sospecha de producto falsificado o adulterado': 10,
};

const TIPOS_PRODUCTO_MAP = {
  'Medicamento': 1,
  'Cosmético': 2,
  'Alimento': 3,
  'Dispositivo médico': 4,
  'Otro': 5,
};

// Necesitamos las funciones de useUbicaciones para resolver los IDs.
// Se reciben como parámetro porque este archivo no es un hook.
function mapearFormularioARequest(datosFormulario, obtenerIdCanton, obtenerIdDistrito) {
  const { ubicacion, hecho, denunciante, productos } = datosFormulario;
  const esAnonima = denunciante.tipoTramite === 'anonima';
  const esConfidencial = denunciante.tipoTramite === 'confidencial';

  return {
    hecho: {
      denunciadoOtraInstitucion: hecho.presentadaOtraInstitucion === 'Sí' ? 'S' : 'N',
      detalleOtraInstitucion: hecho.detalleOtraInstitucion,
      denunciadoPreviamenteMinsalud: hecho.presentadaMinisterioPrevio === 'Sí' ? 'S' : 'N',
      detallePrevioMinsalud: hecho.detallePrevioMinisterio,
      nombreEstablecimiento: hecho.nombreEstablecimiento,
      descripcionHecho: hecho.descripcion,
    },
    ubicacion: {
      cantonId: obtenerIdCanton(ubicacion.provincia, ubicacion.canton),
      distritoId: obtenerIdDistrito(ubicacion.provincia, ubicacion.canton, ubicacion.distrito),
      direccionExacta: ubicacion.direccionExacta,
    },
    privacidad: {
      esAnonima: esAnonima ? 'S' : 'N',
      denunciante: esAnonima
        ? null
        : {
            nombre: denunciante.nombreCompleto,
            numeroIdentificacion: denunciante.numeroIdentificacion,
            correo: denunciante.correo,
            telefono: denunciante.telefono,
            direccionDomicilio: denunciante.direccionDomicilio,
          },
    },
    productos: productos.map((p) => ({
      tipoProductoId: TIPOS_PRODUCTO_MAP[p.tipoProducto] || null,
      nombreProductoTexto: p.nombre,
      registroSanitarioIngresado: p.registroSanitario,
      descripcionProducto: p.descripcion,
      marcaIngresada: p.marca,
      numeroLote: p.lote,
      fabricanteIngresado: p.fabricante,
      paisOrigen: p.paisOrigen,
      presentacion: p.presentacion,
      fechaCompra: p.fechaCompra || null,
      motivos: p.motivos.map((m) => MOTIVOS_MAP[m]).filter((id) => id !== undefined),
    })),
  };
}

export async function registrarDenuncia(datosFormulario, obtenerIdCanton, obtenerIdDistrito) {
  const payload = normalizarCamposVacios(
    mapearFormularioARequest(datosFormulario, obtenerIdCanton, obtenerIdDistrito)
  );

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
    const errorBody = await respuesta.json().catch(() => null);
    console.error('Error del backend:', errorBody);
    throw new Error('No fue posible registrar la denuncia');
  }

  return respuesta.json();
}