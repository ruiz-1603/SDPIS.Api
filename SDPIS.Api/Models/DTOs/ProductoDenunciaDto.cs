namespace SDPIS.Api.Models.DTOs;

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