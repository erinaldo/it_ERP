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
    
    public partial class vwcp_Orden_Giro_Pendiente_Conciliar
    {
        public int IdEmpresa { get; set; }
        public decimal IdCbteCble_Ogiro { get; set; }
        public int IdTipoCbte_Ogiro { get; set; }
        public string IdOrden_giro_Tipo { get; set; }
        public decimal IdProveedor { get; set; }
        public string nombreProveedor { get; set; }
        public System.DateTime co_fechaOg { get; set; }
        public string co_factura { get; set; }
        public System.DateTime co_FechaFactura { get; set; }
        public string co_observacion { get; set; }
        public double co_subtotal_iva { get; set; }
        public double co_subtotal_siniva { get; set; }
        public double co_baseImponible { get; set; }
        public double co_total { get; set; }
        public string Estado { get; set; }
        public Nullable<int> IdEmpresa_ret { get; set; }
        public Nullable<decimal> IdRetencion { get; set; }
        public string re_serie { get; set; }
        public string re_NumRetencion { get; set; }
        public string re_EstaImpresa { get; set; }
        public string TipoFlujo { get; set; }
        public Nullable<int> IdIden_credito { get; set; }
        public string Serie { get; set; }
        public string Serie2 { get; set; }
        public string numDocFactura { get; set; }
        public string Num_Autorizacion { get; set; }
        public string Num_Autorizacion_Imprenta { get; set; }
        public double co_OtroValor_a_descontar { get; set; }
        public double co_Por_iva { get; set; }
        public double co_valoriva { get; set; }
        public Nullable<System.DateTime> fecha_autorizacion { get; set; }
        public string IdCtaCble_Gasto { get; set; }
        public string IdCtaCble_IVA { get; set; }
    }
}
