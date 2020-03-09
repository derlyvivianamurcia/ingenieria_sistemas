using ProgramaIS.Models.BaseDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ProgramaIS.Models.Clases
{
    public class Opcion
    { 
    public string Nombre_Opcion { get; set; }
    public string Icono_Opcion { get; set; }

    Conexion con = new Conexion();

    public Opcion() { }

    public DataTable RegistrarOpcion(Opcion obj)
    {
        List<Parametro> parametros = new List<Parametro>();
        parametros.Add(new Parametro("NOMBRE_OP", obj.Nombre_Opcion, "VARCHAR", ParameterDirection.Input));
        parametros.Add(new Parametro("ICONO_OP", obj.Icono_Opcion, "VARCHAR", ParameterDirection.Input));
        return con.ExecuteProcedure("INSERT_OPCION", parametros);
    }

        public DataTable ConsultarOpciones()
        {
            List<Parametro> parametros = new List<Parametro>();
            return con.ExecuteProcedure("SELECT_OPCION", parametros);
        }
    }
}