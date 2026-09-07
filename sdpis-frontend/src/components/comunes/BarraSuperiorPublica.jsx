import logoSdpis from '../../assets/images/logoAzul_Ministerio.png';

// onIngresar: () => void — abre el modal de ingreso institucional (MSI)
// onDenunciar: () => void — navega al formulario público de denuncia
export function BarraSuperiorPublica({ onIngresar, onDenunciar }) {
  return (
    <header className="topbar-publica">
      <div className="brand">
        <img src={logoSdpis} alt="" aria-hidden="true" className="pp-topbar-logo" />
        <div className="brand-text">
          <div><h3 className="brand-word" >Sistema de Denuncias de Productos de Interés Sanitario</h3>  
            </div>  
         
        </div>
      </div>
      <div className="acciones-rapidas">
        <span className="public-chip">Servicio 100% en línea</span>
        <button type="button" className="btn-secondary" onClick={onIngresar}>
          Ingresar como funcionario
        </button>
        <button type="button" className="btn-primary" onClick={onDenunciar}>
          Presentar una denuncia
        </button>
      </div>
    </header>
  );
}