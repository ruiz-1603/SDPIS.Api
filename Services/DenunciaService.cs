using SDPIS.Api.Models.DTOs;
using SDPIS.Api.Repositories;
using SDPIS.Api.Services.Mapping;
using SDPIS.Api.Services.Validation;

namespace SDPIS.Api.Services;

public class DenunciaService(IDenunciaRepository repository) : IDenunciaService
{
    public async Task<DenunciaRegistradaResponse> RegistrarAsync(CrearDenunciaRequest request, CancellationToken ct)
    {
        DenunciaValidator.Validar(request);                    // HU-002/HU-004: Backend
        var payload = DenunciaJsonMapper.ToJson(request);       // normalizacion + mapeo a contrato del SP

        var (idDenuncia, consecutivo) = await repository.RegistrarDenunciaAsync(payload, ct); // HU-005: BD

        return new DenunciaRegistradaResponse(idDenuncia, consecutivo);
    }
}