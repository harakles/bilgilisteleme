using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using CatsArayuz.Models;

namespace BilgiListeleme.Controllers
{
    public class GuvenlikController : Controller
    {
        DBCatsEntities db = new DBCatsEntities();
        // GET: Guvenlik
        public ActionResult GirisYap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GirisYap(TBLAdminData t)
        {
            var bilgiler = db.TBLAdminData.FirstOrDefault(x => x.UserName == t.UserName && x.Password == t.Password);
            if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.UserName, false);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return View();
            }
        }
        public ActionResult SifremiUnuttum()
        {
            return View();
        }
    }
}