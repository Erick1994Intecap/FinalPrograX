using Dapper;
using Interface;
using Models;
using System;
using System.Collections.Generic;
using System.Data;

namespace Service
{
    public class CalculoClienteService : IClienteImpuesto
    {
       
        public List<ClienteImpuesto> GetClienteImpuesto(IDbConnection dbConnection, ClienteImpuesto clienteImpuesto)
        {
            throw new NotImplementedException();
        }

        public List<ClienteImpuesto> GetClientes(IDbConnection dbConnection)
        {
            return (List<ClienteImpuesto>)dbConnection.Query<ClienteImpuesto>("SELECT * FROM [VW_IMPUESTO_CLIENTE]");
        }
    }
}
