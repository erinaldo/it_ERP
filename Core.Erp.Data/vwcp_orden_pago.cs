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
    
    public partial class vwcp_orden_pago
    {
        public int IdEmpresa { get; set; }
        public decimal IdOrdenPago { get; set; }
        public string IdTipo_op { get; set; }
        public string IdTipo_Persona { get; set; }
        public decimal IdPersona { get; set; }
        public Nullable<decimal> IdEntidad { get; set; }
        public System.DateTime Fecha { get; set; }
        public string IdEstadoAprobacion { get; set; }
        public string IdFormaPago { get; set; }
        public System.DateTime Fecha_Pago { get; set; }
        public Nullable<int> IdBanco { get; set; }
        public string Estado { get; set; }
        public string pe_nombreCompleto { get; set; }
        public Nullable<double> Total_OP { get; set; }
        public double Total_cancelado { get; set; }
        public Nullable<double> Saldo { get; set; }
        public string Observacion { get; set; }
        public Nullable<decimal> IdTipoFlujo { get; set; }
        public string nom_tipoFlujo { get; set; }
        public string EstadoCancelacion { get; set; }
        public string Descripcion { get; set; }
    }
}
