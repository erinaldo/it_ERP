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
    
    public partial class cp_orden_pago_formapago
    {
        public cp_orden_pago_formapago()
        {
            this.cp_orden_pago = new HashSet<cp_orden_pago>();
            this.cp_orden_pago_det = new HashSet<cp_orden_pago_det>();
        }
    
        public string IdFormaPago { get; set; }
        public string descripcion { get; set; }
        public string IdTipoTransaccion { get; set; }
        public string CodModulo { get; set; }
        public Nullable<int> IdTipoMovi_caj { get; set; }
    
        public virtual ICollection<cp_orden_pago> cp_orden_pago { get; set; }
        public virtual ICollection<cp_orden_pago_det> cp_orden_pago_det { get; set; }
        public virtual cp_trans_a_generar_x_FormaPago_OP cp_trans_a_generar_x_FormaPago_OP { get; set; }
    }
}
