namespace SDPIS.Api.Models.DTOs;

public record HechoDto(
    string? DenunciadoOtraInstitucion,      // "S"/"N"
    string? DetalleOtraInstitucion,
    string? DenunciadoPreviamenteMinsalud,  // "S"/"N"
    string? DetallePrevioMinsalud,
    string NombreEstablecimiento,
    string DescripcionHecho
);