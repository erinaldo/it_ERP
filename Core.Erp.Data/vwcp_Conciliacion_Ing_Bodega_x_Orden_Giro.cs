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
    
    public partial class vwcp_Conciliacion_Ing_Bodega_x_Orden_Giro
    {
        public int IdEmpresa { get; set; }
        public decimal IdConciliacion { get; set; }
        public decimal IdProveedor { get; set; }
        public string pr_nombre { get; set; }
        public int IdEmpresa_Apro_Ing { get; set; }
        public decimal IdAprobacion_Apro_Ing { get; set; }
        public Nullable<int> IdEmpresa_Ogiro { get; set; }
        public Nullable<decimal> IdCbteCble_Ogiro { get; set; }
        public Nullable<int> IdTipoCbte_Ogiro { get; set; }
        public string IdOrden_giro_Tipo { get; set; }
        public string Serie { get; set; }
        public string Serie2 { get; set; }
        public string num_documento { get; set; }
        public string num_Factura { get; set; }
        public string num_auto_Proveedor { get; set; }
        public string num_auto_Imprenta { get; set; }
        public System.DateTime Fecha_Factura { get; set; }
        public double co_subtotal_iva { get; set; }
        public double co_subtotal_siniva { get; set; }
        public double Descuento { get; set; }
        public double co_baseImponible { get; set; }
        public double co_Por_iva { get; set; }
        public double co_valoriva { get; set; }
        public double co_total { get; set; }
        public System.DateTime Fecha_Conciliacion { get; set; }
        public string Observacion { get; set; }
        public string IdUsuario { get; set; }
        public string Estado { get; set; }
    }
}
