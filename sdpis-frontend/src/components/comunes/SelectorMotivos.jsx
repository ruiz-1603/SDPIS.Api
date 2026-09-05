// Motivos estandarizados definidos en HU-004
export const MOTIVOS_DENUNCIA = [
  'Etiqueta muestra indicaciones no aprobadas en el registro sanitario',
  'Etiqueta no indica el número de registro sanitario (no aplica para cosméticos)',
  'Etiqueta sin número de lote, fecha de vencimiento, fabricante',
  'Mal estado de productos (defectuoso, contaminado, deteriorado)',
  'Producto bajo alerta sanitaria',
  'Producto con problema de calidad',
  'Producto para modalidad de venta en sitios no autorizados',
  'Producto sin registro sanitario',
  'Publicidad engañosa',
  'Sospecha de producto falsificado o adulterado',
];

// motivosSeleccionados: string[]
// onChange: (nuevosMotivos: string[]) => void
export function SelectorMotivos({ motivosSeleccionados, onChange }) {
  function alternarMotivo(motivo) {
    const yaSeleccionado = motivosSeleccionados.includes(motivo);
    const nuevos = yaSeleccionado
      ? motivosSeleccionados.filter((m) => m !== motivo)
      : [...motivosSeleccionados, motivo];
    onChange(nuevos);
  }

  return (
    <div className="motivo-checklist">
      {MOTIVOS_DENUNCIA.map((motivo) => {
        const seleccionado = motivosSeleccionados.includes(motivo);
        return (
          <div
            key={motivo}
            className={`motivo-check-item${seleccionado ? ' selected' : ''}`}
            onClick={() => alternarMotivo(motivo)}
          >
            <div className="motivo-check-box">{seleccionado ? '✓' : ''}</div>
            <div className="motivo-check-text">{motivo}</div>
          </div>
        );
      })}
    </div>
  );
}