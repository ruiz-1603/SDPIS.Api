using System.Security.Cryptography;

namespace SDPIS.Api.Services.Seguimiento;

// Codigo publico de seguimiento: independiente del id_denuncia y del
// consecutivo institucional. Sin 0/O/1/I/L para evitar transcripciones
// ambiguas cuando el denunciante lo copie a mano. ~59 bits de entropia
// (31^12), suficiente frente a fuerza bruta, sobre todo combinado con
// rate limiting en el futuro endpoint de consulta.
public static class CodigoSeguimientoGenerator
{
    private const string Alfabeto = "23456789ABCDEFGHJKMNPQRSTUVWXYZ";
    private const int LongitudUtil = 12;

    public static string Generar()
    {
        var caracteres = RandomNumberGenerator.GetString(Alfabeto, LongitudUtil);
        return string.Join('-', caracteres.Chunk(4).Select(c => new string(c)));
        // ej: "7K9M-QR2T-XW4P"
    }
}