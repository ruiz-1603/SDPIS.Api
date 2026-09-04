namespace SDPIS.Api.Models.DTOs;

// Unico dato que ve el denunciante. Nunca IdDenuncia (PK interna) ni
// Consecutivo (secuencial por area/anio, adivinable) — ver notas de seguridad.
public record DenunciaRegistradaResponse(string CodigoSeguimiento);