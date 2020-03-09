using ProgramaIS.Models.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProgramaIS.Controllers
{
    public class MenuUsuarioController : Controller
    {
        // GET: MenuUsuario
        public ActionResult Index()
        {
            return View();
        }

        Menu_Usuario menu_usu = new Menu_Usuario();

        public DataTable RegistrarMenuUsuario(Menu_Usuario obj)
        {
            return menu_usu.RegistrarMenuUsuario(obj);
        }

        public DataTable Consultar_Subopciones_Rol(Rol obj)
        {
            return menu_usu.Consultar_Subopciones_Rol(obj);
        }
        public DataTable Consultar_Opciones_Rol(Rol obj)
        {
            return menu_usu.Consultar_Opciones_Rol(obj);
        }
    }
}