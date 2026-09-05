namespace SDPIS.Api.Models.DTOs;

public record UbicacionDto(
    int CantonId,
    int? DistritoId,
    string? DireccionExacta
);