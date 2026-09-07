import { useEnPantalla } from '../../../hooks/useEnPantalla';

// onIngresar: () => void — abre el modal de ingreso institucional (MSI)
export function SeccionAccesoInstitucional({ onIngresar }) {
  const [referencia, visible] = useEnPantalla();

  return (
    <section ref={referencia} className={`pp-reveal${visible ? ' pp-reveal--visible' : ''}`}>
      <div className="card pp-card-hover">
        <div className="card-body pp-fila-cta">
          <div>
            <h2>¿Trabaja en un Área Rectora, Región o la UVC?</h2>
            <p>
              Ingrese con su cuenta institucional para revisar, evaluar y dar seguimiento a las
              denuncias asignadas a su área.
            </p>
          </div>
          <button type="button" className="btn-primary" onClick={onIngresar}>
            Ingresar como funcionario
          </button>
        </div>
      </div>
    </section>
  );
}