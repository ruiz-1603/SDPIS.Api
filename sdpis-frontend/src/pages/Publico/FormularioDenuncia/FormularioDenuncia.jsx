import { useState, useEffect, useRef } from 'react';
import { useFormularioDenuncia } from '../../../hooks/useFormularioDenuncia';
import { useUbicaciones } from '../../../hooks/useUbicaciones';
import { BotonAgregarProducto } from '../../../components/comunes/BotonAgregarProducto';
import { IndicadorProgreso } from '../../../components/comunes/IndicadorProgreso';
import { PiePaginaPublico } from '../../../components/comunes/PiePaginaPublico';
import { registrarDenuncia } from '../../../services/denunciaService';
import { ModalConfirmacion } from '../../../components/comunes/ModalConfirmacion';
import {
  validarUbicacion,
  validarHecho,
  validarProductos,
  validarDenunciante,
  hayErrores,
  hayErroresEnProductos,
} from '../../../utils/validaciones';
import { SeccionUbicacion } from './SeccionUbicacion';
import { SeccionHecho } from './SeccionHecho';
import { BloqueProducto } from './BloqueProducto';
import { SeccionDenunciante } from './SeccionDenunciante';
import { SeccionRevision } from './SeccionRevision';
import { ConfirmacionDenuncia } from './ConfirmacionDenuncia';
import logoMinisterio from '../../../assets/images/logoAzul_Ministerio.png';
import logoSdpis from '../../../assets/images/logoAzul_SDPIS.png';

const PASOS = [
  { numero: 1, etiqueta: 'Ubicación y hecho' },
  { numero: 2, etiqueta: 'Producto(s)' },
  { numero: 3, etiqueta: 'Denunciante' },
  { numero: 4, etiqueta: 'Revisar y confirmar' },
];

// onVolverInicio: () => void opcional — navega de regreso a la página
// principal. Si no se pasa (p. ej. si este componente se usa solo), el
// logo conserva el enlace "/" como respaldo.
export function FormularioDenuncia({ onVolverInicio } = {}) {
  const {
    estado,
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
  } = useFormularioDenuncia();

  const { obtenerDistritos, obtenerIdCanton, obtenerIdDistrito } = useUbicaciones();

    const [numeroDenuncia, setNumeroDenuncia] = useState(null);
    const [mostrarConfirmacionCancelar, setMostrarConfirmacionCancelar] = useState(false);
  const [enviando, setEnviando] = useState(false);
  // Pasos en los que la persona ya intentó avanzar: solo a partir de ese
  // intento se muestran los errores en pantalla (heurística 9), para no
  // mostrar el formulario en rojo antes de que interactúe con él.
  const [pasosConIntento, setPasosConIntento] = useState(() => new Set());
  // Se incrementa cada vez que un intento de avanzar/enviar falla por
  // errores de validación; el efecto de abajo reacciona a ese cambio para
  // desplazar la pantalla y llevar el foco al primer campo con error.
  const [intentoFallidoId, setIntentoFallidoId] = useState(0);

  // Heurística 9 (Ayudar a reconocer y recuperarse de errores): cuando no
  // se puede avanzar por campos faltantes/incorrectos, se lleva a la persona
  // directamente al primer campo con error, en vez de dejarla buscarlo.
    useEffect(() => {
        if (intentoFallidoId === 0) return;
        const campoConError = document.querySelector('.field.error');
        if (!campoConError) return;
        campoConError.scrollIntoView({ behavior: 'smooth', block: 'center' });
        const control = campoConError.querySelector('input, select, textarea');
        if (control) control.focus({ preventScroll: true });
    }, [intentoFallidoId]);

    const esPrimerRenderRef = useRef(true);
    useEffect(() => {
        if (esPrimerRenderRef.current) {
            esPrimerRenderRef.current = false;
            return;
        }
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }, [estado.paso]);

  const distritoAplica = obtenerDistritos(estado.ubicacion.provincia, estado.ubicacion.canton).length > 0;
  const erroresUbicacion = validarUbicacion(estado.ubicacion, { distritoAplica });
  const erroresHecho = validarHecho(estado.hecho);
  const erroresProductos = validarProductos(estado.productos);
  const erroresDenunciante = validarDenunciante(estado.denunciante);

  const formularioCompletoEsValido =
    !hayErrores(erroresUbicacion) &&
    !hayErrores(erroresHecho) &&
    !hayErroresEnProductos(erroresProductos) &&
    !hayErrores(erroresDenunciante);

  const pasoActualEsValido =
    estado.paso === 1
      ? !hayErrores(erroresUbicacion) && !hayErrores(erroresHecho)
      : estado.paso === 2
        ? !hayErroresEnProductos(erroresProductos)
        : estado.paso === 3
          ? !hayErrores(erroresDenunciante)
          : formularioCompletoEsValido;

  const intentoEnPasoActual = pasosConIntento.has(estado.paso);

  function marcarIntentoEnPasoActual() {
    setPasosConIntento((prev) => new Set(prev).add(estado.paso));
  }

  // Heurística 5 (Prevención de errores): no se avanza de paso mientras
  // falten campos obligatorios o su formato mínimo no sea válido.
  function manejarSiguiente() {
    marcarIntentoEnPasoActual();
    if (pasoActualEsValido) {
      irSiguientePaso();
    } else {
      setIntentoFallidoId((n) => n + 1);
    }
  }

  function primerPasoConErrores() {
    if (hayErrores(erroresUbicacion) || hayErrores(erroresHecho)) return 1;
    if (hayErroresEnProductos(erroresProductos)) return 2;
    if (hayErrores(erroresDenunciante)) return 3;
    return null;
  }

  async function manejarEnvio() {
    marcarIntentoEnPasoActual();
    if (!pasoActualEsValido) {
      const pasoConErrores = primerPasoConErrores();
      if (pasoConErrores !== null && pasoConErrores !== estado.paso) {
        setPasosConIntento((prev) => new Set(prev).add(pasoConErrores));
        irAPaso(pasoConErrores);
      }
      setIntentoFallidoId((n) => n + 1);
      return;
    }

    setEnviando(true);
    try {
      const resultado = await registrarDenuncia(estado, obtenerIdCanton, obtenerIdDistrito);
      setNumeroDenuncia(resultado.codigoSeguimiento);
    } finally {
      setEnviando(false);
    }
  }

  // Heurística 3 (Control y libertad del usuario): salida de emergencia
  // clara para abandonar la denuncia, con confirmación previa porque la
  // acción tiene consecuencias (se pierde la información ingresada).
    function manejarCancelar() {
        setMostrarConfirmacionCancelar(true);
    }

    function confirmarCancelar() {
        reiniciarFormulario();
        setPasosConIntento(new Set());
        setMostrarConfirmacionCancelar(false);
    }

  // Heurística 3 (Control y libertad del usuario): el logo del sistema
  // permite volver a la página principal desde cualquier paso del formulario.
  function irAlInicio(evento) {
    if (!onVolverInicio) return;
    evento.preventDefault();
    onVolverInicio();
    }
    function manejarAtras() {
        if (estado.paso === 1) {
            onVolverInicio?.();
            return;
        }
        irPasoAnterior();
    }

  if (numeroDenuncia) {
    return <ConfirmacionDenuncia numeroDenuncia={numeroDenuncia} denunciante={estado.denunciante} />;
  }

  return (
    <>
      <header className="hero-publico">
        <div className="hero-publico__logos">
          <img src={logoMinisterio} alt="Ministerio de Salud de Costa Rica" className="hero-publico__logo" />
          <a href="/" aria-label="Ir a la página principal de SDPIS" onClick={irAlInicio}>
            <img
              src={logoSdpis}
              alt="SDPIS - Sistema de Denuncias de Productos de Interés Sanitario"
              className="hero-publico__logo"
            />
          </a>
        </div>
        <h1>Denuncia de Productos de Interés Sanitario</h1>
        <br />
        <p>
          Use este formulario para reportar medicamentos, alimentos, cosméticos, dispositivos médicos u otros
          productos que representen un riesgo para la salud o que incumplan la normativa sanitaria vigente. Su
          denuncia será revisada por el Ministerio de Salud.
        </p>
      </header>

      <IndicadorProgreso pasos={PASOS} pasoActual={estado.paso} />

      <main className="main-publico">
        {estado.paso === 1 && (
          <>
            <SeccionUbicacion
              datos={estado.ubicacion}
              onChange={actualizarUbicacion}
              errores={intentoEnPasoActual ? erroresUbicacion : {}}
            />
            <SeccionHecho
              datos={estado.hecho}
              onChange={actualizarHecho}
              errores={intentoEnPasoActual ? erroresHecho : {}}
            />
          </>
        )}

        {estado.paso === 2 && (
          <div className="card">
            <div className="card-head">
              <div className="num">3</div>
              <div>
                <h3>Producto(s) denunciado(s)</h3>
                <div className="subtitulo">Agregue uno o varios productos con su tipo y motivo(s)</div>
              </div>
            </div>
            <div className="card-body">
              {estado.productos.map((producto, index) => (
                <BloqueProducto
                  key={index}
                  producto={producto}
                  index={index}
                  onChange={(p) => actualizarProducto(index, p)}
                  onEliminar={() => eliminarProducto(index)}
                  puedeEliminar={estado.productos.length > 1}
                  errores={intentoEnPasoActual ? erroresProductos[index] : {}}
                />
              ))}
              <BotonAgregarProducto onClick={agregarProducto} />
            </div>
          </div>
        )}

        {estado.paso === 3 && (
          <SeccionDenunciante
            datos={estado.denunciante}
            onChange={actualizarDenunciante}
            errores={intentoEnPasoActual ? erroresDenunciante : {}}
          />
        )}

        {estado.paso === 4 && (
          <SeccionRevision estado={estado} distritoAplica={distritoAplica} onEditarPaso={irAPaso} />
        )}

        <div className="form-nav">
                  <div className="form-nav__grupo-izquierda">
                      {estado.paso > 1 && (
                          <button type="button" className="btn-texto-peligro" onClick={manejarCancelar}>
                              Cancelar denuncia
                          </button>
                      )}
                      <button type="button" className="btn-secondary" onClick={manejarAtras}>
                          {estado.paso === 1 ? 'Volver al inicio' : 'Atrás'}
                      </button>
                  </div>

          {estado.paso < PASOS.length ? (
            <button type="button" className="btn-primary" onClick={manejarSiguiente}>
              Siguiente
            </button>
          ) : (
            <button type="button" className="btn-primary" onClick={manejarEnvio} disabled={enviando}>
              {enviando ? 'Enviando...' : 'Registrar denuncia'}
            </button>
          )}
        </div>
      </main>
          <ModalConfirmacion
              visible={mostrarConfirmacionCancelar}
              titulo="Cancelar denuncia"
              mensaje="Se perderá toda la información ingresada y el formulario volverá a comenzar. ¿Desea continuar?"
              textoConfirmar="Sí, cancelar"
              onConfirmar={confirmarCancelar}
              onCancelar={() => setMostrarConfirmacionCancelar(false)}
          />
      <PiePaginaPublico />
    </>
  );
}