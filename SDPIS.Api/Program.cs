using SDPIS.Api.Middleware;
using SDPIS.Api.Repositories;
using SDPIS.Api.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped<IDenunciaRepository, DenunciaRepository>();
builder.Services.AddScoped<IDenunciaService, DenunciaService>();

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();
app.UseMiddleware<ManejadorDeErroresMiddleware>();
app.UseAuthorization();
app.MapControllers();

app.Run();