//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Facturacion
{
    using System;
    using System.Collections.Generic;
    
    public partial class fa_factura_x_ct_cbtecble
    {
        public int vt_IdEmpresa { get; set; }
        public int vt_IdSucursal { get; set; }
        public int vt_IdBodega { get; set; }
        public decimal vt_IdCbteVta { get; set; }
        public int ct_IdEmpresa { get; set; }
        public int ct_IdTipoCbte { get; set; }
        public decimal ct_IdCbteCble { get; set; }
        public string Motivo { get; set; }
    
        public virtual fa_factura fa_factura { get; set; }
    }
}