using CatsArayuz.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using CatsArayuz;

namespace BilgiListeleme.Controllers
{
    public class GuncelleController : Controller
    {
        DBCatsEntities db = new DBCatsEntities();
        [Authorize]
        public ActionResult Index(int Id)
        {
            var hks = db.TBLVdsListe.Find(Id);
            return View(hks);
        }
        public ActionResult VeriGuncelle(TBLVdsListe c)
        {
            var vgn = db.TBLVdsListe.Find(c.Id);
            vgn.SirketAdı = c.SirketAdı;
            vgn.VdsKullanıcıAdı = c.VdsKullanıcıAdı;
            vgn.VdsIp = c.VdsIp;
            vgn.VdsPw = c.VdsPw;
            vgn.TeamViewer = c.TeamViewer;
            vgn.TeamViewerPw = c.TeamViewerPw;
            vgn.AnyDesk = c.AnyDesk;
            vgn.AnydeskPw = c.AnydeskPw;
            vgn.Notes = c.Notes;
            db.SaveChanges();
            return View("Index");
        }
        public ActionResult VeriSil(int Id)
        {
            var dlt = db.TBLVdsListe.Find(Id);
            db.TBLVdsListe.Remove(dlt);
            db.SaveChanges();
            return RedirectToAction("Index", "Home");
        }
    }
}