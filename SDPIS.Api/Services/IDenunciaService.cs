using SDPIS.Api.Models.DTOs;

namespace SDPIS.Api.Services;

public interface IDenunciaService
{
    Task<DenunciaRegistradaResponse> RegistrarAsync(CrearDenunciaRequest request, CancellationToken ct);
}