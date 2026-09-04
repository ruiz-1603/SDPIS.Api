namespace SDPIS.Api.Repositories;

public interface IDenunciaRepository
{
    Task<(long IdDenuncia, string Consecutivo)> RegistrarDenunciaAsync(string denunciaJson, CancellationToken ct);
}