import { useEffect, useState } from 'react';
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

  // NUEVO: obtiene el ID del cantón seleccionado
  function obtenerIdCanton(nombreProvincia, nombreCanton) {
    const cantones = obtenerCantones(nombreProvincia);
    const canton = cantones.find((c) => c.canton === nombreCanton);
    return canton ? canton.idCanton : null;
  }

  // NUEVO: obtiene el ID del distrito seleccionado
  function obtenerIdDistrito(nombreProvincia, nombreCanton, nombreDistrito) {
    const distritos = obtenerDistritos(nombreProvincia, nombreCanton);
    const distrito = distritos.find((d) => d.distrito === nombreDistrito);
    return distrito ? distrito.idDistrito : null;
  }

  return { provincias, obtenerCantones, obtenerDistritos, obtenerIdCanton, obtenerIdDistrito };
}