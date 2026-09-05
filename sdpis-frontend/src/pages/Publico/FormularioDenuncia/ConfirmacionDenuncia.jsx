// numeroDenuncia: string generado por el backend (HU-005)
export function ConfirmacionDenuncia({ numeroDenuncia }) {
  return (
    <div className="main-publico">
      <div className="card">
        <div className="card-body" style={{ textAlign: 'center' }}>
          <h2>Denuncia registrada con éxito</h2>
          <p>
            Su denuncia fue recibida por el Ministerio de Salud. Guarde el siguiente número para dar seguimiento al
            caso:
          </p>
          <h1>{numeroDenuncia}</h1>
        </div>
      </div>
    </div>
  );
}