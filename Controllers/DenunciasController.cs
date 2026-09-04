using Microsoft.AspNetCore.Mvc;
using SDPIS.Api.Models.DTOs;
using SDPIS.Api.Services;

namespace SDPIS.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class DenunciasController(IDenunciaService denunciaService) : ControllerBase
{
    // POST /api/denuncias  -- HU-002 + HU-004 + HU-005
    [HttpPost]
    public async Task<ActionResult<DenunciaRegistradaResponse>> Registrar(
        [FromBody] CrearDenunciaRequest request, CancellationToken ct)
    {
        var resultado = await denunciaService.RegistrarAsync(request, ct);
        return CreatedAtAction(nameof(Registrar), new { id = resultado.IdDenuncia }, resultado);
    }
}