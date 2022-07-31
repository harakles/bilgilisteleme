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
        [HttpGet]
        public ActionResult GirisYap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GirisYap(TBLAdminData t)
        { var AdminData = db.TBLAdminData.FirstOrDefault(x => x.AdminUserName == t.UserName && x.AdminPw == t.Password);
            var bilgiler = db.TBLAdminData.FirstOrDefault(x => x.UserName == t.UserName && x.Password == t.Password);
            if (AdminData != null)
            {
                FormsAuthentication.SetAuthCookie(AdminData.UserName, false);
                return RedirectToAction("Index", "Home");
            }
            else if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.UserName, false);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return View("GirisYap1");
            }

        }
        public ActionResult SifremiUnuttum()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GirisYap1()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GirisYap1(TBLAdminData t)
        {
            var AdminData = db.TBLAdminData.FirstOrDefault(x => x.AdminUserName == t.UserName && x.AdminPw == t.Password);
            var bilgiler = db.TBLAdminData.FirstOrDefault(x => x.UserName == t.UserName && x.Password == t.Password);
            if (AdminData != null)
            {
                FormsAuthentication.SetAuthCookie(AdminData.UserName, false);
                return RedirectToAction("Index", "Home");
            }
            else if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.UserName, false);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return View("GirisYap1");

            }
        }
    }
}