// pasos: { numero: number, etiqueta: string }[]
// pasoActual: number — los pasos con numero < pasoActual se marcan "done",
// el que coincide con pasoActual se marca "active", el resto queda pendiente.
// className: opcional — modificador para adaptar el layout al contexto en
// que se use (por defecto, pensado para ir justo debajo de un hero-publico).
export function IndicadorProgreso({ pasos, pasoActual, className = '' }) {
  return (
    <div className={`progress-wrap${className ? ` ${className}` : ''}`}>
      <div className="progress-track">
        {pasos.map((paso) => (
          <div
            key={paso.numero}
            className={`step${pasoActual === paso.numero ? ' active' : ''}${
              pasoActual > paso.numero ? ' done' : ''
            }`}
          >
            <div className="step-dot">{pasoActual > paso.numero ? '✓' : paso.numero}</div>
            <div className="step-label">{paso.etiqueta}</div>
          </div>
        ))}
      </div>
    </div>
  );
}