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
    
    public partial class Materijal
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Materijal()
        {
            this.TehnickiPregleds = new HashSet<TehnickiPregled>();
        }
    
        public int MaterijalId { get; set; }
        public string Naziv { get; set; }
        public int RaspolozivocStanje { get; set; }
        public double CenaPoKomadu { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TehnickiPregled> TehnickiPregleds { get; set; }
    }
}
