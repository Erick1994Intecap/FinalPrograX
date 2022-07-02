using Autofac;
using Interface;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WepApi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            SqlConnection conn = new SqlConnection
            {
                ConnectionString = @"Server=.;Initial Catalog=FinalPrograX;Trusted_Connection=true;TrustServerCertificate=True"
            };
            conn.Open();
            //builder.RegisterInstance<IDbConnection>(conn);
            //this.ApplicationContainer = builder.Build();

            services.AddSingleton<IClienteImpuesto, CalculoClienteService>();
            services.AddSingleton<ICalculos, CaluloImpuestos>();

            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "WepApi", Version = "v1" });
            });
        }
        public void ConfigureContainer(ContainerBuilder builder)
        {
            builder.RegisterModule(new DIModule());
            #region AutoFac Modulo
            builder.RegisterModule(new DIModule());
            #endregion
            #region AutoFac Direct REgistration
            //builder.RegisterType<AlumnoService>().As<IAlumno>();
            #endregion


        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "WepApi v1"));
            }

            app.UseHttpsRedirection();

            app.UseSentryTracing();

            //app.UseEndpoints(endpoints =>
            //{
            //    endpoints.MapControllerRoute(
            //        name: "default",
            //        pattern: "{controller=ClientesImpuestosController}");
            //});

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
