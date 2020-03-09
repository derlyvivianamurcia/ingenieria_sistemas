using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProgramaIS.Models.BaseDatos
{
    public class Transaccion
    {
        public string Procedure { get; set; }
        public Parametro[] Parameters { get; set; }

        public Transaccion(string Procedure, Parametro[] Parameters)
        {
            this.Procedure = Procedure;
            this.Parameters = Parameters;
        }
    }
}