// titulo: string — título de la tarjeta, se renderiza como <h3>
// children: contenido del cuerpo (normalmente uno o más párrafos)
export function TarjetaSimple({ titulo, children }) {
  return (
    <div className="card pp-card-hover">
      <div className="card-body">
        <h3>{titulo}</h3>
        {children}
      </div>
    </div>
  );
}