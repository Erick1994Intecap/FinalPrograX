using Autofac;
using Interface;
using Microsoft.Data.SqlClient;
using Service;
using System.Data;

namespace WepApi
{
    public class DIModule : Autofac.Module
    {
        string connectionString = @"Server=.;Initial Catalog=FinalPrograX;Trusted_Connection=true;TrustServerCertificate=True";


        protected override void Load(ContainerBuilder builder)
        {
            SqlConnection conn;
            #region clientes
            builder.RegisterType<CalculoClienteService>().As<IClienteImpuesto>().SingleInstance();
            conn = new SqlConnection();
            conn.ConnectionString = connectionString;
            conn.Open();
            builder.RegisterInstance<IDbConnection>(conn);
            #endregion
            #region calculo de impuestos clientes
            builder.RegisterType<CaluloImpuestos>().As<ICalculos>().SingleInstance();
            conn = new SqlConnection();
            conn.ConnectionString = connectionString;
            conn.Open();
            builder.RegisterInstance<IDbConnection>(conn);
            #endregion
        }
    }
}
