// onClick: () => void — agrega un nuevo bloque de producto vacío al formulario (HU-004)
export function BotonAgregarProducto({ onClick }) {
  return (
    <button type="button" className="add-producto-btn" onClick={onClick}>
      + Agregar otro producto
    </button>
  );
}
