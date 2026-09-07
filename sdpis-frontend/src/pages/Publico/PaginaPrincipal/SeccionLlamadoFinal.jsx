// onDenunciar: () => void — navega al formulario público de denuncia
export function SeccionLlamadoFinal({ onDenunciar }) {
  return (
    <section>
      <div className="pp-cta-final pp-fila-cta">
        <div>
          <h3>¿Tiene algo que reportar?</h3>
          <p>
            Presentar una denuncia no requiere una cuenta ni una visita presencial. Puede hacerlo
            ahora mismo.
          </p>
        </div>
        <button type="button" className="btn-primary" onClick={onDenunciar}>
          Presentar una denuncia
        </button>
      </div>
    </section>
  );
}