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
    
    public partial class Garaza
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Garaza()
        {
            this.Opremas = new HashSet<Oprema>();
            this.TehnickiPregled = new HashSet<TehnickiPregled>();
        }
    
        public int GarazaId { get; set; }
        public string Naziv { get; set; }
        public int Broj { get; set; }
        public int TehnickiPregledTehnickiPregledId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Oprema> Opremas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TehnickiPregled> TehnickiPregled { get; set; }
    }
}
