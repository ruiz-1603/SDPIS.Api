// numero: string | number — se muestra dentro del círculo distintivo
// titulo: string — título breve del paso, se renderiza como <h3>
// subtitulo: string opcional — texto pequeño debajo del título
// children: contenido opcional del cuerpo; si no se pasa, la tarjeta solo
// muestra el encabezado numerado (ver sección "Cómo funciona").
export function TarjetaNumerada({ numero, titulo, subtitulo, children }) {
  return (
    <div className="card pp-card-hover">
      <div className="card-head">
        <span className="num">{numero}</span>
        <div>
          <h3>{titulo}</h3>
          {subtitulo && <div className="subtitulo">{subtitulo}</div>}
        </div>
      </div>
      {children && <div className="card-body">{children}</div>}
    </div>
  );
}