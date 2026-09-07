// etiqueta: string — texto corto en mayúsculas sobre el título (p. ej. "Cómo funciona")
// titulo: string — título de la sección, se renderiza como <h2>
// children: contenido opcional (normalmente un párrafo introductorio)
//
// Componente de solo presentación: no envuelve la sección en un <section>
// para que cada página decida ese contenedor (y, si aplica, la referencia
// del hook useEnPantalla). Reutilizable en cualquier sección futura.
export function EncabezadoSeccion({ etiqueta, titulo, children }) {
  return (
    <>
      <span className="section-divider-label">{etiqueta}</span>
      <h2>{titulo}</h2>
      {children}
    </>
  );
}