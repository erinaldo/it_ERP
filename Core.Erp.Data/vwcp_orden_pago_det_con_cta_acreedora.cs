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
    
    public partial class vwcp_orden_pago_det_con_cta_acreedora
    {
        public int IdEmpresa { get; set; }
        public decimal IdOrdenPago { get; set; }
        public int Secuencia { get; set; }
        public Nullable<int> IdEmpresa_cxp { get; set; }
        public Nullable<decimal> IdCbteCble_cxp { get; set; }
        public Nullable<int> IdTipoCbte_cxp { get; set; }
        public double Valor_a_pagar { get; set; }
        public string Referencia { get; set; }
        public string IdFormaPago { get; set; }
        public System.DateTime Fecha_Pago { get; set; }
        public string IdCtaCble_Acreedora { get; set; }
        public string Observacion { get; set; }
        public string IdTipo_op { get; set; }
        public System.DateTime Fecha { get; set; }
        public string Nombre { get; set; }
        public string IdTipo_Persona { get; set; }
        public decimal IdPersona { get; set; }
        public Nullable<decimal> IdEntidad { get; set; }
    }
}
