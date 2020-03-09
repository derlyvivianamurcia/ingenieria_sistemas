using ProgramaIS.Controllers;
using ProgramaIS.Models.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgramaIS.ViewsInicio
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        Usuario usuario = new Usuario();
        UsuarioController con_usuario = new UsuarioController();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public bool validarUsuario()
        {
            DataRow datosPersona;
            usuario.Username = Txt_Usuario.Text;
            usuario.Contra = Txt_Contra.Text;
            bool result;
            DataTable dtPersona = con_usuario.ValidarUsuario(usuario.Username, usuario.Contra);

            if (dtPersona.Rows.Count > 0)
            {
                datosPersona = dtPersona.Rows[0];
                usuario.Num_Identificacion = Convert.ToInt32(datosPersona["Num_Identificacion"].ToString());
                DataTable dtaPersona = con_usuario.ConsultarUsuario(Convert.ToString(usuario.Num_Identificacion));

                if (dtaPersona.Rows.Count > 0)
                {
                    datosPersona = dtaPersona.Rows[0];
                    Session["User"] = datosPersona["Nombre_Usuario"].ToString() + " " + datosPersona["Apellidos_Usuario"].ToString();
                    Session["Rol"] = datosPersona["FK_Rol"].ToString();
                    Session["idUsuario"] = datosPersona["Num_Identificacion"].ToString();
                    Session["Estado"] = "T";
                    Session["Correo"] = datosPersona["Correo"].ToString();
                    Session["Username"] = datosPersona["Username"].ToString();
                }
                result = true;
            }
            else
            {
                result = false;
            }
            return result;
        }

        protected void Ingresar_Click(object sender, EventArgs e)
        {

            if (this.validarUsuario())
            {
                Response.Redirect("../Vistas/Plataforma/Menu.aspx");
            }
            else
            {
              Resultados.Visible = true;
              Resultados.CssClass = "alert alert-danger";
              LResultado.Text = "Datos incorrectos";
            }
        }

        protected void PaginaInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicial.aspx");
        }
    }
}