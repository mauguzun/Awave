using Application;
using Application.Implementation;
using Application.Interfaces;
using Application.Validators;
using DataAccess.Interfaces;
using DataAccess.MsSql;
using Entities.Implementations;
using Entities.Interfaces;
using FluentValidation;
using FluentValidation.AspNetCore;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);


// Add db
builder.Services.AddDbContext<IAppDbContext, AppDbContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("MsSql")));

// add application services 
builder.Services.AddScoped<IGameService, GameService>();
builder.Services.AddScoped<IReviewService, ReviewService>();
builder.Services.AddScoped<IMetricService, MetricService>();

//entites 
builder.Services.AddScoped<ICalculateAverage, CalculateAverage>();


//  framework
builder.Services.AddSwaggerGen();
builder.Services.AddAutoMapper(typeof(MapperProfile));

builder.Services.AddValidatorsFromAssemblyContaining<ReviewRequestValidator>();
builder.Services.AddFluentValidationAutoValidation();
builder.Services.AddFluentValidationClientsideAdapters();


builder.Services
    .AddControllers()
    .AddNewtonsoftJson(options =>
    {
        options.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;
        options.SerializerSettings.ContractResolver = new
              CamelCasePropertyNamesContractResolver();
    });



var app = builder.Build();

// Configure the HTTP request pipeline.

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

// of coz for tests only
app.UseCors(setting =>
{
    setting.AllowAnyOrigin();
    setting.AllowAnyHeader();
    setting.AllowAnyMethod();
});

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
