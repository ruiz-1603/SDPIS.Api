namespace SDPIS.Api.Repositories;

// Errores de negocio lanzados con RAISE_APPLICATION_ERROR dentro del SP
// (ej. -20008 "no se encontro area"), distintos de una falla real de infraestructura.
public class DenunciaBaseDatosException(string message, Exception inner) : Exception(message, inner);