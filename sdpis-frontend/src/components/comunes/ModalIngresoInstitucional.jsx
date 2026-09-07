import { useEffect, useState } from 'react';
import { createPortal } from 'react-dom';

// visible: boolean — controla si el modal se muestra
// onCerrar: () => void
// onIngresoSimulado: (usuario: string) => void — se dispara al "iniciar sesión".
// Hoy es una simulación: la validación real de credenciales la hace el MSI
// del Ministerio de Salud (ver Arquitectura 2.3.1), este modal solo ilustra
// la interacción mientras esa integración no está implementada.
export function ModalIngresoInstitucional({ visible, onCerrar, onIngresoSimulado }) {
  const [usuario, setUsuario] = useState('');
  const [clave, setClave] = useState('');

  // Permite cerrar con Escape (heurística 3: control y libertad del usuario).
  useEffect(() => {
    if (!visible) return undefined;

    function manejarTecla(evento) {
      if (evento.key === 'Escape') onCerrar?.();
    }

    document.addEventListener('keydown', manejarTecla);
    return () => document.removeEventListener('keydown', manejarTecla);
  }, [visible, onCerrar]);

  if (!visible) return null;

  function manejarEnvio(evento) {
    evento.preventDefault();
    onIngresoSimulado?.(usuario);
    setUsuario('');
    setClave('');
  }

  // Se renderiza en un portal (fuera de .pp-transicion-vista) porque ese
  // contenedor anima `transform`/`filter` (ver App.jsx y style.css), lo cual
  // convierte a cualquier ancestro animado en el bloque de referencia para
  // los hijos con position:fixed. Sin el portal, el overlay no se centra
  // respecto a la ventana sino respecto a la altura completa del documento,
  // obligando a hacer scroll para verlo.
  return createPortal(
    <div className="modal-overlay" role="dialog" aria-modal="true" aria-labelledby="tituloIngresoInstitucional">
      <div className="modal-card">
        <div className="modal-header">
          <h2 id="tituloIngresoInstitucional">Ingreso institucional</h2>
          <button type="button" className="modal-close" onClick={onCerrar} aria-label="Cerrar">
            &times;
          </button>
        </div>

        <p className="sub">Autentíquese con su cuenta institucional del Ministerio de Salud (MSI).</p>

        <form onSubmit={manejarEnvio}>
          <div className="field">
            <label htmlFor="usuarioMsi">
              Usuario institucional<span className="req">*</span>
            </label>
            <input
              type="text"
              id="usuarioMsi"
              value={usuario}
              onChange={(evento) => setUsuario(evento.target.value)}
              required
              autoComplete="username"
            />
          </div>

          <div className="field">
            <label htmlFor="claveMsi">
              Contraseña<span className="req">*</span>
            </label>
            <input
              type="password"
              id="claveMsi"
              value={clave}
              onChange={(evento) => setClave(evento.target.value)}
              required
              autoComplete="current-password"
            />
          </div>

          <div className="modal-actions">
            <button type="button" className="btn-secondary" onClick={onCerrar}>
              Cancelar
            </button>
            <button type="submit" className="btn-primary">
              Iniciar sesión
            </button>
          </div>
        </form>
      </div>
    </div>,
    document.body
  );
}