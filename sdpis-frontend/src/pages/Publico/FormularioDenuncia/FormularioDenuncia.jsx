import { useState } from 'react';
import { useFormularioDenuncia } from '../../../hooks/useFormularioDenuncia';
import { useUbicaciones } from '../../../hooks/useUbicaciones';
import { BotonAgregarProducto } from '../../../components/comunes/BotonAgregarProducto';
import { registrarDenuncia } from '../../../services/denunciaService';
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

export function FormularioDenuncia() {
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

  const { obtenerDistritos } = useUbicaciones();

  const [numeroDenuncia, setNumeroDenuncia] = useState(null);
  const [enviando, setEnviando] = useState(false);
  // Pasos en los que la persona ya intentó avanzar: solo a partir de ese
  // intento se muestran los errores en pantalla (heurística 9), para no
  // mostrar el formulario en rojo antes de que interactúe con él.
  const [pasosConIntento, setPasosConIntento] = useState(() => new Set());

  const distritoAplica = obtenerDistritos(estado.ubicacion.provincia, estado.ubicacion.canton).length > 0;
  const erroresUbicacion = validarUbicacion(estado.ubicacion, { distritoAplica });
  const erroresHecho = validarHecho(estado.hecho);
  const erroresProductos = validarProductos(estado.productos);
  const erroresDenunciante = validarDenunciante(estado.denunciante);

  const pasoActualEsValido =
    estado.paso === 1
      ? !hayErrores(erroresUbicacion) && !hayErrores(erroresHecho)
      : estado.paso === 2
        ? !hayErroresEnProductos(erroresProductos)
        : !hayErrores(erroresDenunciante);

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
    }
  }

  async function manejarEnvio() {
    marcarIntentoEnPasoActual();
    if (!pasoActualEsValido) return;

    setEnviando(true);
    try {
      const resultado = await registrarDenuncia(estado);
      setNumeroDenuncia(resultado.numeroDenuncia);
    } finally {
      setEnviando(false);
    }
  }

  // Heurística 3 (Control y libertad del usuario): salida de emergencia
  // clara para abandonar la denuncia, con confirmación previa porque la
  // acción tiene consecuencias (se pierde la información ingresada).
  function manejarCancelar() {
    const confirmarCancelar = window.confirm(
      'Se perderá toda la información ingresada y el formulario volverá a comenzar. ¿Desea continuar?'
    );
    if (confirmarCancelar) {
      reiniciarFormulario();
      setPasosConIntento(new Set());
    }
  }

  if (numeroDenuncia) {
    return <ConfirmacionDenuncia numeroDenuncia={numeroDenuncia} />;
  }

  return (
    <>
     <header className="hero-publico">
  <div className="hero-publico__logos">
    <img src={logoMinisterio} alt="Ministerio de Salud de Costa Rica" className="hero-publico__logo" />
    {/* TODO: reemplazar href="/" por la ruta real cuando exista la página principal */}
    <a href="/" aria-label="Ir a la página principal de SDPIS">
      <img
        src={logoSdpis}
        alt="SDPIS - Sistema de Denuncias de Productos de Interés Sanitario"
        className="hero-publico__logo"
      />
    </a>
  </div>
  <h1>Denuncia de Productos de Interés Sanitario</h1><br  ></br>
 <em> <p>Complete el siguiente formulario para reportar un producto que incumple la normativa sanitaria.</p></em>
</header>

      <div className="progress-wrap">
        <div className="progress-track">
          {PASOS.map((paso) => (
            <div
              key={paso.numero}
              className={`step${estado.paso === paso.numero ? ' active' : ''}${
                estado.paso > paso.numero ? ' done' : ''
              }`}
            >
              <div className="step-dot">{estado.paso > paso.numero ? '✓' : paso.numero}</div>
              <div className="step-label">{paso.etiqueta}</div>
            </div>
          ))}
        </div>
      </div>

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
            <button type="button" className="btn-texto-peligro" onClick={manejarCancelar}>
              Cancelar denuncia
            </button>
            <button type="button" className="btn-secondary" onClick={irPasoAnterior} disabled={estado.paso === 1}>
              Atrás
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

      <footer className="footer-publico">
        <div className="footer-publico__contenido">
          <div className="footer-publico__logos">
            <img src={logoMinisterio} alt="Ministerio de Salud de Costa Rica" className="footer-publico__logo" />
            <img
              src={logoSdpis}
              alt="SDPIS - Sistema de Denuncias de Productos de Interés Sanitario"
              className="footer-publico__logo"
            />
          </div>
          <p className="footer-publico__texto">Ministerio de Salud de Costa Rica — Unidad de Vigilancia y Control</p>
        </div>
      </footer>
    </>
  );
}