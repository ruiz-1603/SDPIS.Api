using System.Text.Json;
using SDPIS.Api.Models.DTOs;
using SDPIS.Api.Services.Validation;

namespace SDPIS.Api.Services.Mapping;

public static class DenunciaJsonMapper
{
    private static readonly JsonSerializerOptions Opciones = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.SnakeCaseLower
    };

    public static string ToJson(CrearDenunciaRequest request)
    {
        var normalizado = request with
        {
            Hecho = request.Hecho with
            {
                DetalleOtraInstitucion = ValidadorTexto.NormalizarABlancoNulo(request.Hecho.DetalleOtraInstitucion),
                DetallePrevioMinsalud = ValidadorTexto.NormalizarABlancoNulo(request.Hecho.DetallePrevioMinsalud)
            },
            Ubicacion = request.Ubicacion with
            {
                DireccionExacta = ValidadorTexto.NormalizarABlancoNulo(request.Ubicacion.DireccionExacta)
            },
            Privacidad = request.Privacidad with
            {
                // anonima: nunca se envia informacion del denunciante, aunque el frontend la haya mandado
                Denunciante = request.Privacidad.EsAnonima == "N" && request.Privacidad.Denunciante is { } d
                    ? d with
                    {
                        Correo = ValidadorTexto.NormalizarABlancoNulo(d.Correo),
                        Telefono = ValidadorTexto.NormalizarABlancoNulo(d.Telefono),
                        DireccionDomicilio = ValidadorTexto.NormalizarABlancoNulo(d.DireccionDomicilio)
                    }
                    : null
            },
            Productos = request.Productos.Select(p => p with
            {
                RegistroSanitarioIngresado = ValidadorTexto.NormalizarABlancoNulo(p.RegistroSanitarioIngresado),
                MarcaIngresada = ValidadorTexto.NormalizarABlancoNulo(p.MarcaIngresada),
                NumeroLote = ValidadorTexto.NormalizarABlancoNulo(p.NumeroLote),
                FabricanteIngresado = ValidadorTexto.NormalizarABlancoNulo(p.FabricanteIngresado),
                PaisOrigen = ValidadorTexto.NormalizarABlancoNulo(p.PaisOrigen),
                Presentacion = ValidadorTexto.NormalizarABlancoNulo(p.Presentacion)
            }).ToList()
        };

        return JsonSerializer.Serialize(normalizado, Opciones);
    }
}