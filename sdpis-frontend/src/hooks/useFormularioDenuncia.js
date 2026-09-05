import { useState } from 'react';

const PRODUCTO_VACIO = {
  nombre: '',
  descripcion: '',
  registroSanitario: '',
  marca: '',
  lote: '',
  fabricante: '',
  paisOrigen: '',
  presentacion: '',
  fechaCompra: '',
  tipoProducto: '',
  motivos: [],
};

// Se usa una función en vez de una constante para que cada llamada (estado
// inicial y reinicio del formulario, heurística 3) reciba objetos nuevos.
function crearEstadoInicial() {
  return {
    paso: 1,
    ubicacion: { provincia: '', canton: '', distrito: '', direccionExacta: '' },
    hecho: {
      descripcion: '',
      presentadaOtraInstitucion: '',
      detalleOtraInstitucion: '',
      presentadaMinisterioPrevio: '',
      detallePrevioMinisterio: '',
    },
    productos: [{ ...PRODUCTO_VACIO }],
    denunciante: {
      tipoTramite: 'normal',
      nombreCompleto: '',
      numeroIdentificacion: '',
      direccionDomicilio: '',
      correo: '',
      telefono: '',
    },
  };
}

const TOTAL_PASOS = 4;

export function useFormularioDenuncia() {
  const [estado, setEstado] = useState(crearEstadoInicial);

  function actualizarUbicacion(ubicacion) {
    setEstado((prev) => ({ ...prev, ubicacion }));
  }

  function actualizarHecho(hecho) {
    setEstado((prev) => ({ ...prev, hecho }));
  }

  function actualizarDenunciante(denunciante) {
    setEstado((prev) => ({ ...prev, denunciante }));
  }

  function actualizarProducto(index, productoActualizado) {
    setEstado((prev) => ({
      ...prev,
      productos: prev.productos.map((p, i) => (i === index ? productoActualizado : p)),
    }));
  }

  function agregarProducto() {
    setEstado((prev) => ({ ...prev, productos: [...prev.productos, { ...PRODUCTO_VACIO }] }));
  }

  function eliminarProducto(index) {
    setEstado((prev) => ({ ...prev, productos: prev.productos.filter((_, i) => i !== index) }));
  }

  function irSiguientePaso() {
    setEstado((prev) => ({ ...prev, paso: Math.min(prev.paso + 1, TOTAL_PASOS) }));
  }

  function irPasoAnterior() {
    setEstado((prev) => ({ ...prev, paso: Math.max(prev.paso - 1, 1) }));
  }

  // Usado desde el paso de revisión (heurística 6: Reconocer antes que
  // recordar) para saltar directamente a la sección que se desea corregir.
  function irAPaso(numero) {
    setEstado((prev) => ({ ...prev, paso: Math.min(Math.max(numero, 1), TOTAL_PASOS) }));
  }

  // Heurística 3 (Control y libertad del usuario): permite abandonar la
  // denuncia y volver a empezar, sin quedar atrapado en el proceso.
  function reiniciarFormulario() {
    setEstado(crearEstadoInicial());
  }

  return {
    estado,
    totalPasos: TOTAL_PASOS,
    actualizarUbicacion,
    actualizarHecho,
    actualizarDenunciante,
    actualizarProducto,
    agregarProducto,
    eliminarProducto,
    irSiguientePaso,
    irPasoAnterior,
    irAPaso,
    reiniciarFormulario,
  };
}