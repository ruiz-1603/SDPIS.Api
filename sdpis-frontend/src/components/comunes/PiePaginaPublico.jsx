import logoMinisterio from '../../assets/images/logoAzul_Ministerio.png';
import logoSdpis from '../../assets/images/logoAzul_SDPIS.png';

// Pie de página institucional público, compartido por todas las páginas
// públicas del SDPIS (formulario de denuncia, página principal y futuras
// páginas como "Consultar mi caso"). No recibe props: su contenido es
// institucional y fijo en todas ellas.
export function PiePaginaPublico() {
  return (
    <footer className="footer-publico">
      <div className="footer-publico__contenido">
        <div className="footer-publico__col-logo">
          <img src={logoMinisterio} alt="Ministerio de Salud de Costa Rica" className="footer-publico__logo" />
        </div>

        <div className="footer-publico__col">
          <h4 className="footer-publico__titulo">Contáctenos</h4>
          <p>Dirección: Calle 16, Avenidas 6 y 8 - San José, Costa Rica</p>
          <p>Horario: L-V de 8:00 am a 4:00 pm</p>
          <p>Teléfono: (506) 4003-5000</p>
          <p>Apartado postal: 10123-1000</p>
        </div>

        <div className="footer-publico__col-logo">
          <img src={logoSdpis} alt="SDPIS" className="footer-publico__logo" />
        </div>

        <div className="footer-publico__col-redes">
          <a
            href="https://www.facebook.com/msaludcr/"
            target="_blank"
            rel="noreferrer"
            aria-label="Facebook oficial"
            className="footer-publico__red"
          >
            <svg viewBox="0 0 24 24" fill="currentColor">
              <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z" />
            </svg>
          </a>

          <span className="footer-publico__redes-separador"></span>

          <a
            href="https://www.youtube.com/user/ministeriodesaludcr"
            target="_blank"
            rel="noreferrer"
            aria-label="YouTube oficial"
            className="footer-publico__red"
          >
            <svg viewBox="0 0 24 24" fill="currentColor">
              <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z" />
            </svg>
          </a>
        </div>
      </div>
    </footer>
  );
}