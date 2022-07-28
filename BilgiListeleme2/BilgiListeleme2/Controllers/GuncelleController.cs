using BilgiListeleme2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using BilgiListeleme2;

namespace BilgiListeleme.Controllers
{
    public class GuncelleController : Controller
    {
        DBBilgiListelemeEntities1 db = new DBBilgiListelemeEntities1();
        [Authorize]
        public ActionResult Index(int Id)
        {
            var hks = db.TBLCustomerVdsList.Find(Id);
            return View(hks);
        }
        public ActionResult VeriGuncelle(TBLCustomerVdsList c)
        {
            var vgn = db.TBLCustomerVdsList.Find(c.Id);
            vgn.Sirketİsmi = c.Sirketİsmi;
            vgn.VdsName = c.VdsName;
            vgn.Vdsİp = c.Vdsİp;
            vgn.VdsPassword = c.VdsPassword;
            vgn.TeamViewer = c.TeamViewer;
            vgn.TeamViewerPw = c.TeamViewerPw;
            vgn.AnyDesk = c.AnyDesk;
            vgn.AnyDeskPw = c.AnyDeskPw;
            vgn.Notes = c.Notes;
            db.SaveChanges();
            return View("Index");
        }
        public ActionResult VeriSil(int Id)
        {
            var dlt = db.TBLCustomerVdsList.Find(Id);
            db.TBLCustomerVdsList.Remove(dlt);
            db.SaveChanges();
            return RedirectToAction("Index" , "Home");
        }
    }
}