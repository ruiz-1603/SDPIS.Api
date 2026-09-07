import { useNavegacionAnimada } from './hooks/useNavegacionAnimada';
import { PaginaPrincipal } from './pages/Publico/PaginaPrincipal/PaginaPrincipal';
import { FormularioDenuncia } from './pages/Publico/FormularioDenuncia/FormularioDenuncia';

// Navegación mínima entre las dos páginas públicas actuales, con una
// transición animada de salida/entrada (ver useNavegacionAnimada). El
// proyecto no tiene un enrutador instalado todavía; cuando se agregue uno
// (p. ej. react-router-dom), solo cambia irA/vista, ya que PaginaPrincipal y
// FormularioDenuncia no conocen cómo está implementada la navegación.
function App() {
  const { vista, transicion, irA } = useNavegacionAnimada('inicio');

  return (
    <div className={`pp-transicion-vista pp-transicion-vista--${transicion}`}>
      {vista === 'denuncia' ? (
        <FormularioDenuncia onVolverInicio={() => irA('inicio')} />
      ) : (
        <PaginaPrincipal onIrADenuncia={() => irA('denuncia')} />
      )}
    </div>
  );
}

export default App;