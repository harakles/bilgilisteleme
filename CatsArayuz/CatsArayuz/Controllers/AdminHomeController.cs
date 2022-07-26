﻿using System;
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
    public class AdminHomeController : Controller
    {
        DBCatsEntities db = new DBCatsEntities();
        [Authorize(Roles ="Admin")]
        public ActionResult AdminIndex(string p, int sayfa = 1)
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
        [Authorize(Roles = "Admin")]
        public ActionResult AdminRemoteDesk(int Id)
        {

            var yks = db.TBLVdsListe.Find(Id);

            return View(yks);
        }

        [Authorize(Roles = "Admin")]
        [HttpGet]
        public ActionResult AdminVeriEkle()
        {
            List<SelectListItem> deger1 = (from i in db.TBLSirketTur.ToList()
                                           select new SelectListItem
                                           {
                                               Text = i.SirketTuru,
                                               Value = i.Id.ToString(),
                                           }).ToList();
            ViewBag.dgr1 = deger1;

            return View();
        }
        [HttpPost]
        public ActionResult VeriEkle(TBLVdsListe p)
        {
            var ktg = db.TBLSirketTur.Where(k => k.Id == p.TBLSirketTur.Id).FirstOrDefault();
            p.TBLSirketTur = ktg;
            db.TBLVdsListe.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index", "Home");

        }
        [Authorize(Roles = "Admin")]
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }


    }
}