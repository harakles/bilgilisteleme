using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BilgiListeleme.Models;
using System.Web.Mvc;

namespace BilgiListeleme.Controllers
{
    public class AdminController : Controller
    {
        DBBilgiListelemeEntities1 db = new DBBilgiListelemeEntities1();           
        // GET: Admin
        public ActionResult Index()
        {
            var data = db.TBLAdmin.ToList();
            return View(data);
        }
    }
}