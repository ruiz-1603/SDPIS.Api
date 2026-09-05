import { useUbicaciones } from '../../hooks/useUbicaciones';

// valores: { provincia, canton, distrito }
// onChange: (nuevosValores) => void
// errores: { provincia?, canton?, distrito? } (mensajes a mostrar, opcional)
export function SelectorUbicacionCascada({ valores, onChange, errores = {} }) {
  const { provincias, obtenerCantones, obtenerDistritos } = useUbicaciones();

  const cantones = obtenerCantones(valores.provincia);
  const distritos = obtenerDistritos(valores.provincia, valores.canton);

  function manejarCambioProvincia(e) {
    onChange({ provincia: e.target.value, canton: '', distrito: '' });
  }

  function manejarCambioCanton(e) {
    onChange({ ...valores, canton: e.target.value, distrito: '' });
  }

  function manejarCambioDistrito(e) {
    onChange({ ...valores, distrito: e.target.value });
  }

  return (
    <div className="row3">
      <div className={`field${errores.provincia ? ' error' : ''}`}>
        <label>
          Provincia<span className="req">*</span>
        </label>
        <select value={valores.provincia} onChange={manejarCambioProvincia}>
          <option value="">Seleccione...</option>
          {provincias.map((p) => (
            <option key={p.provincia} value={p.provincia}>
              {p.provincia}
            </option>
          ))}
        </select>
        {errores.provincia && <div className="error-msg">{errores.provincia}</div>}
      </div>

      <div className={`field${errores.canton ? ' error' : ''}`}>
        <label>
          Cantón<span className="req">*</span>
        </label>
        <select value={valores.canton} onChange={manejarCambioCanton} disabled={!valores.provincia}>
          <option value="">Seleccione...</option>
          {cantones.map((c) => (
            <option key={c.canton} value={c.canton}>
              {c.canton}
            </option>
          ))}
        </select>
        {errores.canton && <div className="error-msg">{errores.canton}</div>}
      </div>

      <div className={`field${errores.distrito ? ' error' : ''}`}>
        <label>
          Distrito
          {distritos.length > 0 ? <span className="req">*</span> : <span className="opt">(no aplica)</span>}
        </label>
        <select
          value={valores.distrito}
          onChange={manejarCambioDistrito}
          disabled={!valores.canton || distritos.length === 0}
        >
          <option value="">Seleccione...</option>
          {distritos.map((d) => (
            <option key={d} value={d}>
              {d}
            </option>
          ))}
        </select>
        {errores.distrito && <div className="error-msg">{errores.distrito}</div>}
      </div>
    </div>
  );
}
