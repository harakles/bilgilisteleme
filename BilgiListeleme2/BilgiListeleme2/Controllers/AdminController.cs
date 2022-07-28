using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BilgiListeleme2.Models;

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