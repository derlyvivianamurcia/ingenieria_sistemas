using ProgramaIS.Models.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProgramaIS.Controllers
{
    public class SubopcionController : Controller
    {
        // GET: Subopcion
        public ActionResult Index()
        {
            return View();
        }

        Subopcion subopcion = new Subopcion();

        public DataTable RegistrarSubopcion(Subopcion obj)
        {
            return subopcion.RegistrarSubopcion(obj);
        }
        public DataTable ConsultarSubopciones()
        {
            return subopcion.ConsultarSubopciones();
        }
    }
}