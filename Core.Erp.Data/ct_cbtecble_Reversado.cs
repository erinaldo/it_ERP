//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class ct_cbtecble_Reversado
    {
        public int IdEmpresa { get; set; }
        public int IdTipoCbte { get; set; }
        public decimal IdCbteCble { get; set; }
        public int IdEmpresa_Anu { get; set; }
        public int IdTipoCbte_Anu { get; set; }
        public decimal IdCbteCble_Anu { get; set; }
        public string ip { get; set; }
    
        public virtual ct_cbtecble ct_cbtecble { get; set; }
        public virtual ct_cbtecble ct_cbtecble1 { get; set; }
    }
}
