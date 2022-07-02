using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class CalculoCliente
    {
        public int id_calculo { get; set; }
        public int id_cliente { get; set; }
        public int id_rubro { get; set; }
        public string impuesto { get; set; }
        public string descripcion { get; set; }
        public double total { get; set; }
    }
}
