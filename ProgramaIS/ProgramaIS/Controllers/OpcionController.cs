using ProgramaIS.Models.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProgramaIS.Controllers
{
    public class OpcionController : Controller
    {
        // GET: Opcion
        public ActionResult Index()
        {
            return View();
        }

        Opcion opcion= new Opcion();

        public DataTable RegistrarOpcion(Opcion obj)
        {
            return opcion.RegistrarOpcion(obj);
        }
        public DataTable ConsultarOpciones()
        {
            return opcion.ConsultarOpciones();
        }
    }
}