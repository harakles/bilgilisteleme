using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using BilgiListeleme.Models;

namespace BilgiListeleme.Controllers
{
    public class GuvenlikController : Controller
    {
        DBBilgiListelemeEntities2 db = new DBBilgiListelemeEntities2();
        // GET: Guvenlik
        public ActionResult GirisYap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GirisYap(TBLAdmin t)
        {
            var bilgiler = db.TBLAdmin.FirstOrDefault(x => x.AdminUserName == t.AdminUserName && x.AdminPw == t.AdminPw);
            if(bilgiler !=null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.AdminUserName, false);
                return RedirectToAction("Index","Home");
            }
            else
            {
                return View();
            }
        }
    }
}