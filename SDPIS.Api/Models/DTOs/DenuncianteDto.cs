namespace SDPIS.Api.Models.DTOs;

public record DenuncianteDto(
    string? Nombre,
    string? NumeroIdentificacion,
    string? Correo,
    string? Telefono,
    string? DireccionDomicilio
);