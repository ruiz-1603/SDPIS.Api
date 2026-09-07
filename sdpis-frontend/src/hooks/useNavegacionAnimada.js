import { useCallback, useRef, useState } from 'react';

const DURACION_TRANSICION_MS = 420;

// Hook genérico para cambiar de "vista" (página) con una transición animada
// de salida y entrada, sin depender de un enrutador ni de una librería
// externa. Reutilizable por cualquier navegación futura entre páginas del
// sistema (no solo entre la página principal y el formulario de denuncia).
//
// Devuelve:
// - vista: el identificador de la vista actualmente renderizada
// - transicion: 'entrada' | 'salida' — clase de animación a aplicar
// - irA(nuevaVista): agenda el cambio, reproduciendo primero la salida
export function useNavegacionAnimada(vistaInicial) {
  const [vista, setVista] = useState(vistaInicial);
  const [transicion, setTransicion] = useState('entrada');
  const temporizador = useRef(null);

  const irA = useCallback((nuevaVista) => {
    clearTimeout(temporizador.current);
    setTransicion('salida');
    temporizador.current = setTimeout(() => {
      setVista(nuevaVista);
      setTransicion('entrada');
    }, DURACION_TRANSICION_MS);
  }, []);

  return { vista, transicion, irA };
}