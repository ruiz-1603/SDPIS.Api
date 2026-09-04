using SDPIS.Api.Models.DTOs;

namespace SDPIS.Api.Services.Validation;

public static class DenunciaValidator
{
    public static void Validar(CrearDenunciaRequest request)
    {
        var errores = new List<string>();

        // --- Hecho (HU-002) ---
        if (!ValidadorTexto.EsValido(request.Hecho.NombreEstablecimiento))
            errores.Add("El nombre del establecimiento o persona a denunciar es obligatorio.");

        if (!ValidadorTexto.EsValido(request.Hecho.DescripcionHecho, longitudMinima: 10))
            errores.Add("La descripcion cronologica de la problematica es obligatoria.");

        // --- Privacidad (HU-002: anonima o confidencial, nunca ninguna/ambas) ---
        if (request.Privacidad.EsAnonima is not ("S" or "N"))
        {
            errores.Add("Debe indicar si la denuncia es anonima o confidencial.");
        }
        else if (request.Privacidad.EsAnonima == "N")
        {
            var d = request.Privacidad.Denunciante;
            if (d is null || !ValidadorTexto.EsValido(d.Nombre))
                errores.Add("El nombre del denunciante es obligatorio en denuncia confidencial.");
            if (d is null || !ValidadorTexto.EsValido(d.NumeroIdentificacion, longitudMinima: 5))
                errores.Add("El numero de identificacion del denunciante es obligatorio en denuncia confidencial.");
        }

        // --- Ubicacion ---
        if (request.Ubicacion.CantonId <= 0)
            errores.Add("Debe seleccionar un canton valido.");

        // --- Productos (HU-004) ---
        if (request.Productos is null || request.Productos.Count == 0)
        {
            errores.Add("La denuncia debe incluir al menos un producto.");
        }
        else
        {
            for (var i = 0; i < request.Productos.Count; i++)
            {
                var p = request.Productos[i];
                var etiqueta = $"Producto #{i + 1}";

                if (!ValidadorTexto.EsValido(p.NombreProductoTexto))
                    errores.Add($"{etiqueta}: el nombre del producto es obligatorio.");

                if (!ValidadorTexto.EsValido(p.DescripcionProducto, longitudMinima: 5))
                    errores.Add($"{etiqueta}: la descripcion del producto es obligatoria.");

                if (p.TipoProductoId <= 0)
                    errores.Add($"{etiqueta}: debe seleccionar un tipo de producto.");

                if (p.Motivos is null || p.Motivos.Count == 0)
                    errores.Add($"{etiqueta}: debe seleccionar al menos un motivo de denuncia.");
            }
        }

        if (errores.Count > 0)
            throw new DenunciaValidationException(errores);
    }
}