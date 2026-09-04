namespace SDPIS.Api.Repositories;

// Colision detectada al insertar denuncia_seguimiento (evento
// estadisticamente casi imposible: ~1 en 2^59). El Service la usa
// para reintentar con un codigo nuevo; no deberia llegar al Middleware.
internal class CodigoSeguimientoDuplicadoException(Exception inner)
    : Exception("El codigo de seguimiento generado ya existe.", inner);