using Dapper;
using Interface;
using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service
{
    public class CaluloImpuestos : ICalculos
    {
        private readonly IDbConnection _dbConnection;
        public CaluloImpuestos(IDbConnection dbConnection)
        {
            _dbConnection = dbConnection;
        }

        public List<CalculoCliente> calcularAHORRO(IDbConnection dbConnection, int id_cliente)
        {
            throw new NotImplementedException();
        }

        public List<CalculoCliente> calcularISR(IDbConnection dbConnection, int id_cliente)
        {
            var cliente = dbConnection.Query<ClienteImpuesto>("SELECT * FROM [VW_IMPUESTO_CLIENTE] WHERE id_cliente = " + id_cliente);
            double ISR;

            foreach (var item in cliente)
            {
                var salario = item.Salario;

                if (salario <= 30000.00)
                {
                    ISR = salario * 0.05;
                }
                else
                {
                    ISR = salario * 0.07;
                }

                dbConnection.Query<CalculoCliente>("INSERT INTO Calculo_Cliente (id_cliente, id_rubro, Impuesto, Descripcion, Total) VALUES ("
                                                    + item.id_cliente + "," + item.id_rubro + "," + "'ISR'" + "," + "'Calculo de ISR'" + "," + ISR + ")");
            }

            return (List<CalculoCliente>)dbConnection.Query<CalculoCliente>("SELECT * FROM  Calculo_Cliente WHERE id_cliente = " + id_cliente);
        }

        public List<CalculoCliente> calcularIVA(IDbConnection dbConnection, int id_cliente)
        {
            var cliente = dbConnection.Query<ClienteImpuesto>("SELECT * FROM [VW_IMPUESTO_CLIENTE] WHERE id_cliente = " + id_cliente);
            double IVA;

            foreach (var item in cliente)
            {
                var salario = item.Salario;

                IVA = salario * 0.12;

                dbConnection.Query<CalculoCliente>("INSERT INTO Calculo_Cliente (id_cliente, id_rubro, Impuesto, Descripcion, Total) VALUES ("
                                                    + item.id_cliente + "," + item.id_rubro + "," + "'IVA'" + "," + "'Calculo de IVA'" + "," + IVA + ")");
            }

            return (List<CalculoCliente>)dbConnection.Query<CalculoCliente>("SELECT * FROM  Calculo_Cliente WHERE id_cliente = " + id_cliente);
        }
    }
}
