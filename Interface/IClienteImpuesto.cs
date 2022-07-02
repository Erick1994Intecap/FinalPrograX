using Models;
using System;
using System.Collections.Generic;
using System.Data;

namespace Interface
{
    public interface IClienteImpuesto
    {
        List<ClienteImpuesto> GetClientes(IDbConnection dbConnection);
        List<ClienteImpuesto> GetClienteImpuesto(IDbConnection dbConnection, ClienteImpuesto clienteImpuesto);

    }
}
