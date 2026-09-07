import { useEnPantalla } from '../../../hooks/useEnPantalla';
import logoMinisterio from '../../../assets/images/logoAzul_Ministerio.png';
import logoSdpis from '../../../assets/images/logoAzul_SDPIS.png';

// onDenunciar: () => void — navega al formulario público de denuncia
// onConsultarCaso: () => void — acción para "Consultar el estado de mi caso"
// (aún no implementada; hoy solo notifica que está pendiente)
export function HeroPrincipal({ onDenunciar, onConsultarCaso }) {
  const [referencia, visible] = useEnPantalla({ umbral: 0 });

  return (
    <header
      ref={referencia}
      className={`hero-publico pp-reveal${visible ? ' pp-reveal--visible' : ''}`}
    >
      <div className="hero-publico__logos">
        <img
          src={logoMinisterio}
          alt="Ministerio de Salud de Costa Rica"
          className="hero-publico__logo"
        />
        <img
          src={logoSdpis}
          alt="SDPIS — Sistema de Denuncias de Productos de Interés Sanitario"
          className="hero-publico__logo"
        />
      </div>

      <div className="eyebrow">Servicio público del Ministerio de Salud</div>
      <h1>Reporte un producto que puede estar afectando su salud</h1>
      <p>
        El SDPIS recibe, clasifica y da seguimiento a denuncias sobre medicamentos, cosméticos y
        alimentos que incumplan la normativa sanitaria. Puede denunciar en minutos, con o sin dar
        su nombre, y consultar el avance de su caso cuando lo necesite.
      </p>

      <div className="pp-hero-cta">
        <button type="button" className="btn-primary" onClick={onDenunciar}>
          Presentar una denuncia
        </button>
        <button type="button" className="btn-secondary" onClick={onConsultarCaso}>
          Consultar el estado de mi caso
        </button>
      </div>

      <p className="sub pp-hero-nota">
        Su denuncia puede ser anónima o confidencial. Usted decide qué información compartir.
      </p>

      <a href="#proceso" className="pp-scroll-cue" aria-label="Ir a la sección Cómo funciona">
        <svg
          width="22"
          height="22"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          strokeWidth="2"
          strokeLinecap="round"
          strokeLinejoin="round"
          aria-hidden="true"
        >
          <path d="M6 9l6 6 6-6" />
        </svg>
      </a>
    </header>
  );
}