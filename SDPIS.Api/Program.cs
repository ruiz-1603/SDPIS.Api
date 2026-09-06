using SDPIS.Api.Middleware;
using SDPIS.Api.Repositories;
using SDPIS.Api.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped<IDenunciaRepository, DenunciaRepository>();
builder.Services.AddScoped<IDenunciaService, DenunciaService>();

// Agregar CORS para desarrollo
builder.Services.AddCors(options =>
{
    options.AddPolicy("DesarrolloLocal", policy =>
        policy.WithOrigins("http://localhost:5173", "http://localhost:3000")
              .AllowAnyMethod()
              .AllowAnyHeader());
});

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("DesarrolloLocal");           // ← CORS primero
                                          //app.UseHttpsRedirection();                // ← Redirect después
                                          // Deshabilitado en local: rompe el
                                          // preflight de CORS al redirigir
                                          // http://localhost:5290 -> https://localhost:7064
app.UseMiddleware<ManejadorDeErroresMiddleware>();
app.UseAuthorization();
app.MapControllers();

app.Run();