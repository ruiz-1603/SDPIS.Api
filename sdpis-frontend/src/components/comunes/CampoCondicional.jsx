// Campo de texto que solo se muestra cuando se cumple una condición (p. ej.
// cuando se respondió "Sí" a una pregunta previa), para los campos
// condicionales de HU-002 (detalle_otra_institucion, detalle_previo_minsalud).
// mostrar: boolean — si el campo debe visualizarse
// etiqueta: string — texto del label
// valor: string
// onChange: (nuevoValor: string) => void
// placeholder: string (opcional)
export function CampoCondicional({ mostrar, etiqueta, valor, onChange, placeholder }) {
  if (!mostrar) return null;

  return (
    <div className="conditional-box">
      <div className="field">
        <label>
          {etiqueta}
          <span className="opt">(opcional)</span>
        </label>
        <input type="text" value={valor} onChange={(e) => onChange(e.target.value)} placeholder={placeholder} />
      </div>
    </div>
  );
}
