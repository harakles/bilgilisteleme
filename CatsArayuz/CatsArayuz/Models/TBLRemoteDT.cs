//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class TBLRemoteDT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBLRemoteDT()
        {
            this.TBLVdsListe = new HashSet<TBLVdsListe>();
        }
    
        public int Id { get; set; }
        public string RemoteDTName { get; set; }
        public Nullable<int> RemoteDTValue { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBLVdsListe> TBLVdsListe { get; set; }
    }
}
