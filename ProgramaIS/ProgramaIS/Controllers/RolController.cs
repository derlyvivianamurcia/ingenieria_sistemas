using ProgramaIS.Models.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProgramaIS.Controllers
{
    public class RolController : Controller
    {
        // GET: Rol
        public ActionResult Index()
        {
            return View();
        }

        Rol rol = new Rol();

        public DataTable RegistrarRol(Rol obj)
        {
            return rol.RegistrarRol(obj);
        }
    }
}