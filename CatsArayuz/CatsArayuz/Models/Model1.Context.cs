﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CatsArayuz.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBCatsEntities : DbContext
    {
        public DBCatsEntities()
            : base("name=DBCatsEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<TBLAdminData> TBLAdminData { get; set; }
        public virtual DbSet<TBLEkle> TBLEkle { get; set; }
        public virtual DbSet<TBLVdsListe> TBLVdsListe { get; set; }
        public virtual DbSet<TBLUnvan> TBLUnvan { get; set; }
        public virtual DbSet<TBLSirketTur> TBLSirketTur { get; set; }
    }
}
