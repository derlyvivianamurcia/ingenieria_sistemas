using ProgramaIS.Models.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgramaIS.Vistas.Plataforma
{
    public partial class PrincipalWM : System.Web.UI.MasterPage
    {
        Rol rol = new Rol();
        public DataTable dt_Opciones, dt_Subopciones;
        public DataRow dr_opciones, dr_subopciones;
        Menu_Usuario menu = new Menu_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Estado"] != null && Session["Estado"].ToString().Equals("T"))
                {
                    TUser.Text = Session["User"].ToString();
                    Nombre.Text = Session["User"].ToString();
                    Correo.Text = Session["Correo"].ToString();
                    Username.Text = Session["Username"].ToString();

                    if (Session["Rol"] != null)
                    {
                        rol.Id_Rol = Session["Rol"].ToString();

                        dt_Opciones = menu.Consultar_Opciones_Rol(rol);

                        dt_Subopciones = menu.Consultar_Subopciones_Rol(rol);

                    }
                }
                else
                {
                    Response.Redirect("../../IniciarSesion.aspx");
                }

            }
            catch (Exception ex)
            {

            }

        }
    }
}