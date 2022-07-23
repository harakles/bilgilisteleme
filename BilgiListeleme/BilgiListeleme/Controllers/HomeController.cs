using BilgiListeleme.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;

namespace BilgiListeleme.Controllers
{
    public class HomeController : Controller
    {
        DBBilgiListelemeEntities1 db = new DBBilgiListelemeEntities1();
        public ActionResult Index(string p, int sayfa = 1)
        {
            
            var Datalar = from k in db.TBLCustomerVdsList select k;
            if (!string.IsNullOrEmpty(p))
            {


                Datalar = Datalar.Where(m => m.Sirketİsmi.Contains(p));
            }
            return View(Datalar.ToList().ToPagedList(sayfa,6));
            //var datas = db.TBLCustomerVdsList.ToList().ToPagedList(sayfa, 8);
            //return View(datas);
        }
        public ActionResult RemoteDesk(TBLRemoteDesktop c)
        {
            var yks = db.TBLRemoteDesktop.ToList();

            return View(yks);
        }
    }
}