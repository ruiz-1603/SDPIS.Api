import { useState } from 'react';
import { BarraSuperiorPublica } from '../../../components/comunes/BarraSuperiorPublica';
import { ModalIngresoInstitucional } from '../../../components/comunes/ModalIngresoInstitucional';
import { AvisoToast } from '../../../components/comunes/AvisoToast';
import { PiePaginaPublico } from '../../../components/comunes/PiePaginaPublico';
import { useAvisoToast } from '../../../hooks/useAvisoToast';
import { HeroPrincipal } from './HeroPrincipal';
import { SeccionComoFunciona } from './SeccionComoFunciona';
import { SeccionSobreElSistema } from './SeccionSobreElSistema';
import { SeccionExperienciaDenunciante } from './SeccionExperienciaDenunciante';
import { SeccionAccesoInstitucional } from './SeccionAccesoInstitucional';
import { SeccionSeguimiento } from './SeccionSeguimiento';
import { SeccionLlamadoFinal } from './SeccionLlamadoFinal';

// onIrADenuncia: () => void — navega al formulario público de denuncia (HU-002).
// Hoy App.jsx la resuelve con un cambio de vista local; el día que el
// proyecto incorpore un enrutador (p. ej. react-router-dom), solo cambia esa
// función, ya que este componente no conoce cómo está implementada la
// navegación, solo la invoca.
export function PaginaPrincipal({ onIrADenuncia }) {
  const [modalIngresoVisible, setModalIngresoVisible] = useState(false);
  const { aviso, mostrarAviso } = useAvisoToast();

  function manejarIngresoSimulado(usuario) {
    setModalIngresoVisible(false);
    mostrarAviso(`Sesión iniciada correctamente como ${usuario}. (Simulación de autenticación MSI)`, 'exito');
  }

  function manejarFuncionPendiente() {
    mostrarAviso('Esta función se conectará al backend en un sprint posterior.', 'aviso');
  }

  return (
    <>
      <BarraSuperiorPublica
        onIngresar={() => setModalIngresoVisible(true)}
        onDenunciar={onIrADenuncia}
      />

      <main>
        <HeroPrincipal onDenunciar={onIrADenuncia} onConsultarCaso={manejarFuncionPendiente} />

        <div className="main-publico">
          <SeccionComoFunciona />
          <SeccionSobreElSistema />
          <SeccionExperienciaDenunciante />
          <SeccionAccesoInstitucional onIngresar={() => setModalIngresoVisible(true)} />
          <SeccionSeguimiento />
          <SeccionLlamadoFinal onDenunciar={onIrADenuncia} />
        </div>
      </main>

      <PiePaginaPublico />

      <ModalIngresoInstitucional
        visible={modalIngresoVisible}
        onCerrar={() => setModalIngresoVisible(false)}
        onIngresoSimulado={manejarIngresoSimulado}
      />

      <AvisoToast aviso={aviso} />
    </>
  );
}