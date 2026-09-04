namespace SDPIS.Api.Models.DTOs;

public record CrearDenunciaRequest(
    HechoDto Hecho,
    UbicacionDto Ubicacion,
    PrivacidadDto Privacidad,
    List<ProductoDenunciaDto> Productos
);

public record HechoDto(
    string? DenunciadoOtraInstitucion,      // "S"/"N"
    string? DetalleOtraInstitucion,
    string? DenunciadoPreviamenteMinsalud,  // "S"/"N"
    string? DetallePrevioMinsalud,
    string NombreEstablecimiento,
    string DescripcionHecho
);

public record UbicacionDto(
    int CantonId,
    int? DistritoId,
    string? DireccionExacta
);

public record PrivacidadDto(
    string EsAnonima,                       // "S"/"N"
    DenuncianteDto? Denunciante
);

public record DenuncianteDto(
    string? Nombre,
    string? NumeroIdentificacion,
    string? Correo,
    string? Telefono,
    string? DireccionDomicilio
);

public record ProductoDenunciaDto(
    int TipoProductoId,
    string NombreProductoTexto,
    string? RegistroSanitarioIngresado,
    string DescripcionProducto,
    string? MarcaIngresada,
    string? NumeroLote,
    string? FabricanteIngresado,
    string? PaisOrigen,
    string? Presentacion,
    DateOnly? FechaCompra,
    List<int> Motivos
);