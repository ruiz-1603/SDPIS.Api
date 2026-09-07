import { useEnPantalla } from '../../../hooks/useEnPantalla';
import { EncabezadoSeccion } from '../../../components/comunes/EncabezadoSeccion';
import { TarjetaNumerada } from '../../../components/comunes/TarjetaNumerada';

const PUNTOS_EXPERIENCIA = [
  {
    numero: 1,
    titulo: 'No necesita crear una cuenta',
    texto:
      'Cualquier persona puede completar el formulario público directamente, sin usuario ni contraseña.',
  },
  {
    numero: 2,
    titulo: 'Usted decide cuánto se identifica',
    texto:
      'Puede denunciar de forma anónima, confidencial, o compartiendo sus datos para recibir respuesta.',
  },
  {
    numero: 3,
    titulo: 'Puede revisar y corregir antes de enviar',
    texto:
      'Antes de confirmar, el sistema le muestra un resumen de lo digitado para que verifique la información.',
  },
  {
    numero: 4,
    titulo: 'Recibe confirmación de recepción',
    texto:
      'Al finalizar, obtiene un número de denuncia y, si dejó un correo, una confirmación por ese medio.',
  },
];

export function SeccionExperienciaDenunciante() {
  const [referencia, visible] = useEnPantalla();

  return (
    <section ref={referencia} className={`pp-reveal${visible ? ' pp-reveal--visible' : ''}`}>
      <EncabezadoSeccion etiqueta="Experiencia del denunciante" titulo="Pensado primero para quien denuncia">
        <p>
          El sistema también organiza el trabajo interno del Ministerio, pero su punto de partida
          es facilitar que cualquier persona pueda reportar un producto sin barreras.
        </p>
      </EncabezadoSeccion>

      <div className="row2 pp-seccion-grid">
        {PUNTOS_EXPERIENCIA.map((punto) => (
          <TarjetaNumerada key={punto.numero} numero={punto.numero} titulo={punto.titulo}>
            <p>{punto.texto}</p>
          </TarjetaNumerada>
        ))}
      </div>
    </section>
  );
}