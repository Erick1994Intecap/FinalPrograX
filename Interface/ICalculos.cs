using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Interface
{
    public interface ICalculos: Iisr, Iiva, Iahorro { }
    public interface Iiva
    {
        List<CalculoCliente> calcularIVA(IDbConnection dbConnection, int id_cliente);
    }

    public interface Iisr
    {
        List<CalculoCliente> calcularISR(IDbConnection dbConnection, int id_cliente);
    }


    public interface Iahorro
    {
        List<CalculoCliente> calcularAHORRO(IDbConnection dbConnection, int id_cliente);
    }
}
