using System.Data;
using System.Globalization;
using Oracle.ManagedDataAccess.Client;

namespace SDPIS.Api.Repositories;

public class DenunciaRepository(IConfiguration configuration) : IDenunciaRepository
{
    private readonly string _connectionString = configuration.GetConnectionString("SDPIS")
        ?? throw new InvalidOperationException("No se encontro la cadena de conexion 'SDPIS'.");

    public async Task<(long IdDenuncia, string Consecutivo)> RegistrarDenunciaAsync(
        string denunciaJson, CancellationToken ct)
    {
        await using var connection = new OracleConnection(_connectionString);
        await connection.OpenAsync(ct);

        await using var command = connection.CreateCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "sp_registrar_denuncia";
        command.BindByName = true;

        command.Parameters.Add(new OracleParameter("p_denuncia_json", OracleDbType.Clob, denunciaJson, ParameterDirection.Input));
        var pIdDenuncia = new OracleParameter("p_id_denuncia", OracleDbType.Decimal, ParameterDirection.Output);
        var pConsecutivo = new OracleParameter("p_consecutivo", OracleDbType.Varchar2, 60, null, ParameterDirection.Output);
        command.Parameters.Add(pIdDenuncia);
        command.Parameters.Add(pConsecutivo);

        try
        {
            await command.ExecuteNonQueryAsync(ct);
        }
        catch (OracleException ex) when (ex.Number is >= 20000 and <= 20999)
        {
            // RAISE_APPLICATION_ERROR(-20xxx) del SP llega aca como numero positivo
            throw new DenunciaBaseDatosException(ex.Message, ex);
        }

        var idDenuncia = long.Parse(pIdDenuncia.Value!.ToString()!, CultureInfo.InvariantCulture);
        var consecutivo = pConsecutivo.Value!.ToString()!;

        return (idDenuncia, consecutivo);
    }
}