using ProgramaIS.Models.BaseDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ProgramaIS.Models.Clases
{
    public class Rol
    {
        public string Id_Rol { get; set; }
        public string Nombre_Rol { get; set; }

        Conexion con = new Conexion();

        public Rol() { }

        public DataTable RegistrarRol(Rol obj)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("NOMBRE_ROL", obj.Nombre_Rol, "VARCHAR", ParameterDirection.Input));
            return con.ExecuteProcedure("INSERT_ROL", parametros);
        }

    }
}