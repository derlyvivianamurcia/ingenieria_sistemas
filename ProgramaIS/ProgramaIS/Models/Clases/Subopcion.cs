using ProgramaIS.Models.BaseDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ProgramaIS.Models.Clases
{
    public class Subopcion
    {
        public string Nombre_Subopcion { get; set; }
        public string URL_Subopcion { get; set; }
        public string FK_Opcion { get; set; }
        public string Icono_Subopcion { get; set; }

        Conexion con = new Conexion();

        public Subopcion() { }

        public DataTable RegistrarSubopcion(Subopcion obj)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("NOMBRE_SUBOP", obj.Nombre_Subopcion, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("URL_SUBOP", obj.URL_Subopcion, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("FK_OP", obj.FK_Opcion, "INTEGER", ParameterDirection.Input));
            parametros.Add(new Parametro("ICONO_SUBOP", obj.Icono_Subopcion, "VARCHAR", ParameterDirection.Input));
            return con.ExecuteProcedure("INSERT_SUBOPCION", parametros);
        }
        public DataTable ConsultarSubopciones()
        {
            List<Parametro> parametros = new List<Parametro>();
            return con.ExecuteProcedure("SELECT_SUBOPCION", parametros);
        }
    }
}