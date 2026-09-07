import { useCallback, useRef, useState } from 'react';

const DURACION_MS = 3200;

// Hook genérico para mostrar avisos tipo "toast" (éxito, error, aviso).
// Centraliza el estado para que cualquier página reutilice el mismo
// mecanismo de notificación in-app (heurística 1: visibilidad del estado
// del sistema). Se usa junto con el componente <AvisoToast />.
export function useAvisoToast() {
  const [aviso, setAviso] = useState(null); // { texto, tipo } | null
  const temporizador = useRef(null);

  const mostrarAviso = useCallback((texto, tipo = 'aviso') => {
    clearTimeout(temporizador.current);
    setAviso({ texto, tipo });
    temporizador.current = setTimeout(() => setAviso(null), DURACION_MS);
  }, []);

  return { aviso, mostrarAviso };
}