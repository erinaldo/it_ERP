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
    
    public partial class in_UnidadMedida_Equiv_conversion
    {
        public string IdUnidadMedida { get; set; }
        public string IdUnidadMedida_equiva { get; set; }
        public double valor_equiv { get; set; }
        public string interpretacion { get; set; }
    
        public virtual in_UnidadMedida in_UnidadMedida { get; set; }
        public virtual in_UnidadMedida in_UnidadMedida1 { get; set; }
    }
}