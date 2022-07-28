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
            List<SelectListItem> deger1 = (from i in db.TBLRemoteDT.ToList()
                                           select new SelectListItem
                                           {
                                               Text = i.RemoteDTName,
                                               Value = i.Id.ToString(),
                                           }).ToList();
            ViewBag.dgr1 = deger1;
            var hks = db.TBLVdsListe.Find(Id);
            return View(hks);
        }
            public ActionResult VeriGuncelle(TBLVdsListe c)
        {
            var sks = db.TBLRemoteDT.Where(k => k.Id == c.TBLRemoteDT.Id).FirstOrDefault();
            c.TBLRemoteDT = sks;
            var vgn = db.TBLVdsListe.Find(c.Id);
            vgn.SirketAdı = c.SirketAdı;
            vgn.VdsKullanıcıAdı = c.VdsKullanıcıAdı;
            vgn.VdsIp = c.VdsIp;
            vgn.VdsPw = c.VdsPw;
            vgn.Notes = c.Notes;
            db.SaveChanges();
            return View("Index");
        }
        public ActionResult VeriSil(int Id)
        {
            var dlt = db.TBLVdsListe.Find(Id);
            db.TBLVdsListe.Remove(dlt);
            db.SaveChanges();
            return RedirectToAction("Index" , "Home");
        }
    }
}