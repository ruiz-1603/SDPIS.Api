namespace SDPIS.Api.Repositories;

public interface IDenunciaRepository
{
    Task<DenunciaRegistroResultado> RegistrarDenunciaAsync(
        string denunciaJson, string codigoSeguimiento, CancellationToken ct);
}