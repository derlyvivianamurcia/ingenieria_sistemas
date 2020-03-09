using ProgramaIS.Models.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProgramaIS.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult Index()
        {
            return View();
        }

        Usuario usuario = new Usuario();

        public DataTable RegistrarUsuario(Usuario obj)
        {
            return usuario.RegistrarUsuario(obj);
        }


        public DataTable ConsultarUsuario(string Cedula)
        {
            return usuario.ConsultarUsuario(Cedula);
        }

        public DataTable ConsultarUsuarioss()
        {
            return usuario.ConsultarUsuarioss();
        }
        public DataTable ValidarUsuario(string Usuario, string Contra)
        {
            return usuario.ValidarUsuario(Usuario, Contra);
        }

    }
}