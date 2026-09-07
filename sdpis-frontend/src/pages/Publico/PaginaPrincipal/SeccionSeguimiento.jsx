import { useEnPantalla } from '../../../hooks/useEnPantalla';
import { EncabezadoSeccion } from '../../../components/comunes/EncabezadoSeccion';
import { TarjetaSimple } from '../../../components/comunes/TarjetaSimple';
import { IndicadorProgreso } from '../../../components/comunes/IndicadorProgreso';

const PASOS_SEGUIMIENTO = [
  { numero: 1, etiqueta: 'Recepción' },
  { numero: 2, etiqueta: 'Clasificación' },
  { numero: 3, etiqueta: 'Evaluación' },
  { numero: 4, etiqueta: 'Resolución' },
];

const DETALLE_SEGUIMIENTO = [
  {
    titulo: '1. Recepción',
    texto: 'Su denuncia entra al sistema y recibe un número de expediente de forma inmediata.',
  },
  {
    titulo: '2. Clasificación',
    texto:
      'Se determina el área responsable según su ubicación y el tipo de producto reportado.',
  },
  {
    titulo: '3. Evaluación',
    texto:
      'Un funcionario asignado revisa el caso y define su nivel de prioridad según el riesgo.',
  },
  {
    titulo: '4. Resolución',
    texto:
      'El caso se cierra con una resolución formal, dentro de los plazos que le corresponden por prioridad.',
  },
];

// El indicador se muestra con un paso ilustrativo (3 de 4) para explicar el
// proceso a quien aún no ha denunciado; no representa un caso real.
export function SeccionSeguimiento() {
  const [referencia, visible] = useEnPantalla();

  return (
    <section ref={referencia} className={`pp-reveal${visible ? ' pp-reveal--visible' : ''}`}>
      <EncabezadoSeccion etiqueta="Seguimiento del caso" titulo="Qué sucede después de enviar su denuncia">
        <p>
          El seguimiento es automático desde el momento en que se registra el caso, para que usted
          sepa qué esperar.
        </p>
      </EncabezadoSeccion>

      <IndicadorProgreso pasos={PASOS_SEGUIMIENTO} pasoActual={3} className="pp-progress-inline" />

      <div className="row2 pp-seccion-grid">
        {DETALLE_SEGUIMIENTO.map((item) => (
          <TarjetaSimple key={item.titulo} titulo={item.titulo}>
            <p>{item.texto}</p>
          </TarjetaSimple>
        ))}
      </div>
    </section>
  );
}