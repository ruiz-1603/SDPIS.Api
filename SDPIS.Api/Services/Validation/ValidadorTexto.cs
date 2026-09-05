using System.Text.RegularExpressions;

namespace SDPIS.Api.Services.Validation;

// no vacio, no solo puntuacion, longitud minima razonable.
public static class ValidadorTexto
{
    private static readonly Regex ContieneAlfanumerico = new(@"[\p{L}\p{N}]", RegexOptions.Compiled);

    public static bool EsValido(string? texto, int longitudMinima = 3)
    {
        var valor = texto?.Trim();
        if (string.IsNullOrEmpty(valor)) return false;
        if (valor.Length < longitudMinima) return false;
        return ContieneAlfanumerico.IsMatch(valor);
    }

    // Normalizacion de blancos a NULL (HU-002/HU-004)
    public static string? NormalizarABlancoNulo(string? texto)
    {
        var valor = texto?.Trim();
        return string.IsNullOrEmpty(valor) ? null : valor;
    }
}