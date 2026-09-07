import { useEnPantalla } from '../../../hooks/useEnPantalla';
import { EncabezadoSeccion } from '../../../components/comunes/EncabezadoSeccion';
import { TarjetaSimple } from '../../../components/comunes/TarjetaSimple';

export function SeccionSobreElSistema() {
  const [referencia, visible] = useEnPantalla();

  return (
    <section ref={referencia} className={`pp-reveal${visible ? ' pp-reveal--visible' : ''}`}>
      <EncabezadoSeccion etiqueta="Sobre el sistema" titulo="Un solo lugar para denunciar y dar seguimiento">
        <p>
          Antes, cada denuncia dependía del área de salud que la recibiera. El SDPIS centraliza el
          registro, la evaluación y la resolución de los casos, para que ninguna denuncia se pierda
          en el camino.
        </p>
      </EncabezadoSeccion>

      <div className="row3 pp-seccion-grid">
        <TarjetaSimple titulo="Registro claro y guiado">
          <p>
            El formulario le pide solo la información necesaria y explica cada campo en lenguaje
            sencillo, sin trámites presenciales.
          </p>
        </TarjetaSimple>

        <TarjetaSimple titulo="Expediente digital trazable">
          <p>
            Cada denuncia recibe un número único y un expediente que registra cada acción tomada
            sobre el caso.
          </p>
        </TarjetaSimple>

        <TarjetaSimple titulo="Evaluación por nivel de riesgo">
          <p>
            El sistema evalúa la gravedad del caso y lo dirige al área correspondiente para que se
            atienda con la prioridad que necesita.
          </p>
        </TarjetaSimple>
      </div>
    </section>
  );
}