import { useEffect, useRef, useState } from 'react';

// Hook genérico de revelado por scroll: observa un elemento y devuelve `true`
// una sola vez que entra en el viewport (heurística 8: revelar contenido
// progresivamente en vez de mostrar todo de golpe). No es exclusivo de la
// página principal; cualquier sección futura del sistema puede reutilizarlo.
//
// margen/umbral: opciones de IntersectionObserver (rootMargin/threshold).
// Devuelve [referencia, visible]: la referencia se asigna al elemento a
// observar y `visible` indica si ya fue revelado.
export function useEnPantalla({ margen = '0px 0px -80px 0px', umbral = 0.15 } = {}) {
  const referencia = useRef(null);
  // Si el navegador no soporta IntersectionObserver, se parte visible en
  // vez de dejar la sección oculta permanentemente.
  const [visible, setVisible] = useState(() => typeof IntersectionObserver === 'undefined');

  useEffect(() => {
    const elemento = referencia.current;
    if (!elemento || typeof IntersectionObserver === 'undefined') return undefined;

    const observador = new IntersectionObserver(
      ([entrada]) => {
        if (entrada.isIntersecting) {
          setVisible(true);
          observador.unobserve(elemento);
        }
      },
      { threshold: umbral, rootMargin: margen }
    );

    observador.observe(elemento);
    return () => observador.disconnect();
  }, [margen, umbral]);

  return [referencia, visible];
}