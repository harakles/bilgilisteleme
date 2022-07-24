using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BilgiListeleme.Models;

namespace BilgiListeleme.Controllers
{
    public class GuvenlikController : Controller
    {
        DBBilgiListelemeEntities1 db = new DBBilgiListelemeEntities1();
        // GET: Guvenlik
        public ActionResult GirisYap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GirisYap(TBLAdmin t)
        {
            var bilgiler = db.TBLAdmin.FirstOrDefault(x => x.AdminUserName == t.AdminUserName && x.AdminPw == t.AdminPw);
            if(bilgiler != null)
            {
                return RedirectToAction("Index","Home");
            }
            else
            {
                return View();
            }
        }
    }
}