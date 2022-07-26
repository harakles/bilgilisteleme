﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using System.Web.Security;
using PagedList.Mvc;
using BilgiListeleme2.Models;
using SweetAlert.Controllers;

namespace BilgiListeleme.Controllers
{
    public class HomeController : Controller
    {
        DBBilgiListelemeEntities1 db = new DBBilgiListelemeEntities1();
        [Authorize]
        public ActionResult Index(string p, int sayfa = 1)
        {

            var Datalar = from k in db.TBLCustomerVdsList select k;
            if (!string.IsNullOrEmpty(p))
            {


                Datalar = Datalar.Where(m => m.Sirketİsmi.Contains(p));
            }
            return View(Datalar.ToList().ToPagedList(sayfa, 10));
            //var datas = db.TBLCustomerVdsList.ToList().ToPagedList(sayfa, 8);
            //return View(datas);
        }
        [Authorize]
        public ActionResult RemoteDesk(int Id)
        {

            var yks = db.TBLCustomerVdsList.Find(Id);

            return View(yks);
        }
        [Authorize]
        [HttpGet]
        public ActionResult VeriEkle()
        {

            return View();
        }
        [HttpPost]
        public ActionResult VeriEkle(TBLCustomerVdsList p)
        {

            db.TBLCustomerVdsList.Add(p);
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