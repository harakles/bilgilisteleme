using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CatsArayuz.Models;

namespace BilgiListeleme.Controllers
{
    public class AdminController : Controller
    {
        DBCatsEntities db = new DBCatsEntities();
        // GET: Admin
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            var data = db.TBLAdminData.ToList();
            return View(data);
        }
    }
}