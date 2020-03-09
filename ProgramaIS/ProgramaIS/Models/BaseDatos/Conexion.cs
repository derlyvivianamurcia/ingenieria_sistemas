using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace ProgramaIS.Models.BaseDatos
{
    public class Conexion
    {

        public string Connection()
        {
            return ConfigurationManager.ConnectionStrings["connec"].ConnectionString;
        }

        public DataTable ExecuteProcedure(string procedure, List<Parametro> parameters)
        {
            MySqlConnection connection = new MySqlConnection(this.Connection());
            connection.Open();
            MySqlCommand comando = new MySqlCommand(procedure, connection);
            comando.CommandType = CommandType.StoredProcedure;

            DataTable datos = new DataTable();

            if (parameters != null)
            {
                foreach (Parametro p in parameters)
                {
                    comando.Parameters.Add(new MySqlParameter(p.nombre, p.tipo));
                    comando.Parameters[p.nombre].Direction = p.direccion;
                    if (p.direccion == ParameterDirection.Input)
                    {
                        comando.Parameters[p.nombre].Value = p.valor;
                    }
                }
            }
            try
            {
                datos.Load(comando.ExecuteReader());
            }
            catch (Exception ex)
            {
                datos = this.getError(ex.Message);
            }
            finally
            {
                if (connection != null)
                {
                    if (connection.State == ConnectionState.Open)
                    {
                        connection.Close();
                    }
                }
            }

            return datos;
        }

        public DataTable getError(string ef)
        {
            DataTable datos = new DataTable();
            datos.Columns.Add("TIPO");
            datos.Columns.Add("MENSAJE");
            datos.Columns.Add("VALORES");
            //dt.Rows.Add("Ha ocurrido un error, por favor verifique e intente nuevamente", "D");
            datos.Rows.Add("D", ef, "");
            return datos;
        }
    }
}
