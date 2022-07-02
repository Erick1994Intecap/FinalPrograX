using System;

namespace Models
{
    public class Cliente
    {
        public int id_cliente { get; set; }
        public int CUI { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public double Salario { get; set; }
        public int Telefono { get; set; }
        public string Email { get; set; }
        public string Ciudad { get; set; }
        public int id_Pais { get; set; }
        public int id_rubro { get; set; }
    }
}
