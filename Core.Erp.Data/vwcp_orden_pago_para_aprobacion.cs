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
    
    public partial class vwcp_orden_pago_para_aprobacion
    {
        public int IdEmpresa { get; set; }
        public decimal IdOrdenPago { get; set; }
        public int Secuencia { get; set; }
        public Nullable<int> IdEmpresa_cxp { get; set; }
        public Nullable<decimal> IdCbteCble_cxp { get; set; }
        public Nullable<int> IdTipoCbte_cxp { get; set; }
        public double Valor_a_pagar { get; set; }
        public string IdEstadoAprobacion { get; set; }
        public string IdTipo_Persona { get; set; }
        public Nullable<decimal> IdEntidad { get; set; }
        public decimal IdPersona { get; set; }
        public string pe_nombreCompleto { get; set; }
        public string Referencia { get; set; }
        public string Referencia2 { get; set; }
        public System.DateTime co_FechaFactura { get; set; }
        public System.DateTime co_FechaFactura_vct { get; set; }
        public Nullable<int> dias_vencido { get; set; }
        public string IdFormaPago { get; set; }
        public string descripcion { get; set; }
        public string Estado { get; set; }
        public string co_observacion { get; set; }
        public System.DateTime Fecha_Pago { get; set; }
        public string IdTipo_op { get; set; }
    }
}