using ProgramaIS.Models.BaseDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ProgramaIS.Models.Clases
{
    public class Usuario
    {
        public long Num_Identificacion { get; set; }
        public string Nombre_Usuario { get; set; }
        public string Apellidos_Usuario { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string Username { get; set; }
        public string Contra { get; set; }
        public string FK_Rol { get; set; }

        Conexion con = new Conexion();

        public Usuario() { }

        public DataTable RegistrarUsuario(Usuario obj)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("NUM_USU", obj.Num_Identificacion, "INTEGER", ParameterDirection.Input));
            parametros.Add(new Parametro("NOMBRE_USU", obj.Nombre_Usuario, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("APELLIDOS_USU", obj.Apellidos_Usuario, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("CORREO_USU", obj.Correo, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("TELEFONO_USU", obj.Telefono, "INTEGER", ParameterDirection.Input));
            parametros.Add(new Parametro("USERNAME_USU", obj.Username, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("CONTRA_USU", obj.Contra, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("FKID_ROL", obj.FK_Rol, "INTEGER", ParameterDirection.Input));
            return con.ExecuteProcedure("INSERT_USUARIO", parametros);
        }

        public DataTable ValidarUsuario(string Usuario, string Contra)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("USERNAME_U", Usuario, "VARCHAR", ParameterDirection.Input));
            parametros.Add(new Parametro("CONTRA_USU", Contra, "VARCHAR", ParameterDirection.Input));
            DataTable dt = con.ExecuteProcedure("VALIDAR_USUARIO", parametros);
            return dt;
        }

        public DataTable ConsultarUsuario(string Cedula)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("NUM_PER", Cedula, "INTEGER", ParameterDirection.Input));
            DataTable dt = con.ExecuteProcedure("SELECT_PER", parametros);
            return dt;
        }
        public DataTable ConsultarUsuarioss()
        {
            List<Parametro> parametros = new List<Parametro>();
            return con.ExecuteProcedure("SELECT_USUARIOS", parametros);
        }

    }
}