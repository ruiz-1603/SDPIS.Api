namespace SDPIS.Api.Services.Validation;

public class DenunciaValidationException(IEnumerable<string> errores)
    : Exception("La denuncia contiene datos invalidos.")
{
    public IReadOnlyList<string> Errores { get; } = errores.ToList();
}