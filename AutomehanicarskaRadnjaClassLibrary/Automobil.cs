//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AutomehanicarskaRadnjaClassLibrary
{
    using System;
    using System.Collections.Generic;
    
    public partial class Automobil
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Automobil()
        {
            this.TehnickiPregleds = new HashSet<TehnickiPregled>();
            this.Kvars = new HashSet<Kvar>();
        }
    
        public int AutomobilId { get; set; }
        public string MarkaAutomobila { get; set; }
        public System.DateTime GodinaProizvodnje { get; set; }
        public int BrojSasije { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TehnickiPregled> TehnickiPregleds { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Kvar> Kvars { get; set; }
    }
}
