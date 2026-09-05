import { useEffect, useState } from 'react';

// TODO: reemplazar el import local por una llamada a services/ubicacionService.js
// cuando exista el endpoint real de ubicaciones en el backend.
import ubicaciones from '../data/ubicaciones.json';

export function useUbicaciones() {
  const [provincias, setProvincias] = useState([]);

  useEffect(() => {
    setProvincias(ubicaciones);
  }, []);

  function obtenerCantones(nombreProvincia) {
    const provincia = provincias.find((p) => p.provincia === nombreProvincia);
    return provincia ? provincia.cantones : [];
  }

  function obtenerDistritos(nombreProvincia, nombreCanton) {
    const cantones = obtenerCantones(nombreProvincia);
    const canton = cantones.find((c) => c.canton === nombreCanton);
    return canton ? canton.distritos : [];
  }

  return { provincias, obtenerCantones, obtenerDistritos };
}