using ProgramaIS.Models.BaseDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ProgramaIS.Models.Clases
{
    public class Menu_Usuario
    {
        public string Estado_Menu { get; set; }
        public string FK_Rol { get; set; }
        public string FK_Subopcion { get; set; }

        Conexion con = new Conexion();

        public Menu_Usuario() { }

        public DataTable RegistrarMenuUsuario(Menu_Usuario obj)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("ESTADO_MEN", obj.Estado_Menu, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("FK_ROL_MEN", obj.FK_Rol, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("FK_SUBOPCION_MEN", obj.FK_Subopcion, "VARCHAR", ParameterDirection.Input));
            return con.ExecuteProcedure("INSERT_MENU_USU", parametros);
        }

        public DataTable Consultar_Subopciones_Rol(Rol obj)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("ROL_USU", obj.Id_Rol, "INTEGER", ParameterDirection.Input));
            DataTable dt = con.ExecuteProcedure("SELECT_SUBOPCION_ROL", parametros);
            return dt;
        }

        public DataTable Consultar_Opciones_Rol(Rol obj)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("ROL_USU", obj.Id_Rol, "INTEGER", ParameterDirection.Input));
            DataTable dt = con.ExecuteProcedure("SELECT_OPCION_ROL", parametros);
            return dt;
        }
    }
}