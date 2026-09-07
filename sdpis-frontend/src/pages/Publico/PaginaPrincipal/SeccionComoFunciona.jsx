import { useEnPantalla } from '../../../hooks/useEnPantalla';
import { EncabezadoSeccion } from '../../../components/comunes/EncabezadoSeccion';
import { TarjetaNumerada } from '../../../components/comunes/TarjetaNumerada';

const PASOS_DENUNCIA = [
  { numero: 1, titulo: 'Describa el producto', subtitulo: 'Nombre, marca y motivo del reporte' },
  {
    numero: 2,
    titulo: 'Cuente qué ocurrió',
    subtitulo: 'Explique la situación en orden, con la fecha de compra si la tiene',
  },
  {
    numero: 3,
    titulo: 'Adjunte evidencia (opcional)',
    subtitulo: 'Fotos, facturas o documentos que respalden el caso',
  },
  {
    numero: 4,
    titulo: 'Reciba su número de denuncia',
    subtitulo: 'Guárdelo para dar seguimiento al caso',
  },
];

export function SeccionComoFunciona() {
  const [referencia, visible] = useEnPantalla();

  return (
    <section
      id="proceso"
      ref={referencia}
      className={`pp-reveal${visible ? ' pp-reveal--visible' : ''}`}
    >
      <EncabezadoSeccion etiqueta="Cómo funciona" titulo="Presentar una denuncia toma 4 pasos" />

      <div className="row2 pp-seccion-grid">
        {PASOS_DENUNCIA.map((paso) => (
          <TarjetaNumerada
            key={paso.numero}
            numero={paso.numero}
            titulo={paso.titulo}
            subtitulo={paso.subtitulo}
          />
        ))}
      </div>
    </section>
  );
}