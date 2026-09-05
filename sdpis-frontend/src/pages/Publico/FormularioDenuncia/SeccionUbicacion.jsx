import { SelectorUbicacionCascada } from '../../../components/comunes/SelectorUbicacionCascada';

// datos: { provincia, canton, distrito, direccionExacta }
// onChange: (nuevosDatos) => void
// errores: { provincia?, canton?, distrito? } (mensajes a mostrar, opcional)
export function SeccionUbicacion({ datos, onChange, errores = {} }) {
  function manejarCambioUbicacion(nuevaUbicacion) {
    onChange({ ...datos, ...nuevaUbicacion });
  }

  return (
    <div className="card">
      <div className="card-head">
        <div className="num">1</div>
        <div>
          <h3>Ubicación de la denuncia</h3>
          <div className="subtitulo">Indique dónde ocurrió el hecho denunciado</div>
        </div>
      </div>
      <div className="card-body">
        <SelectorUbicacionCascada
          valores={{ provincia: datos.provincia, canton: datos.canton, distrito: datos.distrito }}
          onChange={manejarCambioUbicacion}
          errores={errores}
        />

        <div className="field">
          <label>
            Dirección exacta<span className="opt">(opcional)</span>
          </label>
          <textarea
            value={datos.direccionExacta}
            onChange={(e) => onChange({ ...datos, direccionExacta: e.target.value })}
            placeholder="Señas o punto de referencia del lugar denunciado"
          />
        </div>
      </div>
    </div>
  );
}
