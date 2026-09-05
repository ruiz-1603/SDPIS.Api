namespace SDPIS.Api.Models.DTOs;

public record PrivacidadDto(
    string EsAnonima,                       // "S"/"N"
    DenuncianteDto? Denunciante
);