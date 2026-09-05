namespace SDPIS.Api.Models.DTOs;

public record CrearDenunciaRequest(
    HechoDto Hecho,
    UbicacionDto Ubicacion,
    PrivacidadDto Privacidad,
    List<ProductoDenunciaDto> Productos
);