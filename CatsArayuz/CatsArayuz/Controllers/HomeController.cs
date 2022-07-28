using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using System.Web.Security;
using PagedList.Mvc;
using CatsArayuz.Models;
using SweetAlert.Controllers;
using CatsArayuz.Models.classs;

namespace BilgiListeleme.Controllers
{
    public class HomeController : Controller
    {
        DBCatsEntities db = new DBCatsEntities();
        [Authorize]
        public ActionResult Index(string p, int sayfa = 1)
        {

            var Datalar = from k in db.TBLVdsListe select k;
            if (!string.IsNullOrEmpty(p))
            {


                Datalar = Datalar.Where(m => m.SirketAdı.Contains(p));
            }
            return View(Datalar.ToList().ToPagedList(sayfa, 10));
            //var datas = db.TBLCustomerVdsList.ToList().ToPagedList(sayfa, 8);
            //return View(datas);
        }
        [Authorize]
        public ActionResult RemoteDesk(int Id)
        {

            var yks = db.TBLVdsListe.Find(Id);

            return View(yks);
        }
        [Authorize]
        [HttpGet]
        public ActionResult VeriEkle()
        {
            Class1 cs = new Class1();
            cs.deger1 = db.TBLRemoteDT.ToList();
            
            return View(cs);
        }
        [HttpPost]
        public ActionResult VeriEkle(Class1 p)
        {

            db.TBLVdsListe.Add(p.vdss1);
            
            db.SaveChanges();
            return RedirectToAction("Index", "Home");

        }
        [Authorize]
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }


    }
}