using SDPIS.Api.Repositories;
using SDPIS.Api.Services.Validation;

namespace SDPIS.Api.Middleware;

public class ManejadorDeErroresMiddleware(RequestDelegate next, ILogger<ManejadorDeErroresMiddleware> logger)
{
    public async Task InvokeAsync(HttpContext context)
    {
        try
        {
            await next(context);
        }
        catch (DenunciaValidationException ex)
        {
            context.Response.StatusCode = StatusCodes.Status400BadRequest;
            await context.Response.WriteAsJsonAsync(new { errores = ex.Errores });
        }
        catch (DenunciaBaseDatosException ex)
        {
            logger.LogWarning(ex, "Error de negocio reportado por la base de datos");
            context.Response.StatusCode = StatusCodes.Status422UnprocessableEntity;
            await context.Response.WriteAsJsonAsync(new { error = ex.Message });
        }
        catch (Exception ex)
        {
            logger.LogError(ex, "Error no controlado");
            context.Response.StatusCode = StatusCodes.Status500InternalServerError;
            await context.Response.WriteAsJsonAsync(new { error = "Ocurrio un error inesperado. Intente nuevamente." });
        }
    }
}