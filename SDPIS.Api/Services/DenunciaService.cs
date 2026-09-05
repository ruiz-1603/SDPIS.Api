using SDPIS.Api.Models.DTOs;
using SDPIS.Api.Repositories;
using SDPIS.Api.Services.Mapping;
using SDPIS.Api.Services.Seguimiento;
using SDPIS.Api.Services.Validation;

namespace SDPIS.Api.Services;

public class DenunciaService(IDenunciaRepository repository) : IDenunciaService
{
    private const int MaxIntentosCodigo = 5;

    public async Task<DenunciaRegistradaResponse> RegistrarAsync(CrearDenunciaRequest request, CancellationToken ct)
    {
        DenunciaValidator.Validar(request);
        var payload = DenunciaJsonMapper.ToJson(request);

        for (var intento = 1; intento <= MaxIntentosCodigo; intento++)
        {
            var codigoSeguimiento = CodigoSeguimientoGenerator.Generar();
            try
            {
                var resultado = await repository.RegistrarDenunciaAsync(payload, codigoSeguimiento, ct);

                // Punto de extension (HU-022, feature aparte): si
                // request.Privacidad.EsAnonima == "N" y hay correo, disparar
                // el acuse de recepcion con resultado.CodigoSeguimiento.
                // Nunca usar resultado.IdDenuncia ni resultado.Consecutivo aqui.

                return new DenunciaRegistradaResponse(resultado.CodigoSeguimiento);
            }
            catch (CodigoSeguimientoDuplicadoException) when (intento < MaxIntentosCodigo)
            {
                // colision practicamente imposible (~1 en 2^59): se reintenta
            }
        }

        throw new InvalidOperationException(
            "No fue posible generar un codigo de seguimiento unico tras varios intentos.");
    }
}