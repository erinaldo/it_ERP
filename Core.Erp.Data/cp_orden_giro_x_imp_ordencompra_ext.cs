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
    
    public partial class cp_orden_giro_x_imp_ordencompra_ext
    {
        public int og_IdEmpresa { get; set; }
        public decimal og_IdCbteCble { get; set; }
        public int og_IdTipoCbte { get; set; }
        public int imp_IdEmpresa { get; set; }
        public int imp_IdSucursal { get; set; }
        public decimal imp_IdOrdenCompraExt { get; set; }
        public Nullable<int> IdGastoImp { get; set; }
    
        public virtual cp_orden_giro cp_orden_giro { get; set; }
    }
}
