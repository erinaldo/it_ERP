//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Reportes
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwCAJ_Rpt006
    {
        public long IdRow { get; set; }
        public int IdEmpresa { get; set; }
        public decimal IdConciliacion_Caja { get; set; }
        public int Secuencia { get; set; }
        public int IdEmpresa_OGiro { get; set; }
        public int IdTipoCbte_Ogiro { get; set; }
        public decimal IdCbteCble_Ogiro { get; set; }
        public System.DateTime co_fechaOg { get; set; }
        public Nullable<decimal> IdProveedor { get; set; }
        public string pr_codigo { get; set; }
        public decimal IdPersona { get; set; }
        public string pe_nombreCompleto { get; set; }
        public int IdTipoMovi { get; set; }
        public string nom_tipo_movi { get; set; }
        public string co_factura { get; set; }
        public string Num_Autorizacion { get; set; }
        public double co_subtotal_iva { get; set; }
        public double co_subtotal_siniva { get; set; }
        public double co_valoriva { get; set; }
        public double co_valorpagar { get; set; }
        public double Valor_a_aplicar { get; set; }
        public int IdCaja { get; set; }
        public string nom_caja { get; set; }
        public int IdPeriodo { get; set; }
        public Nullable<System.DateTime> Fecha_ini { get; set; }
        public Nullable<System.DateTime> Fecha_fin { get; set; }
        public System.DateTime Fecha_conci { get; set; }
        public string IdEstadoCierre { get; set; }
        public string IdOrden_giro_Tipo { get; set; }
        public string tipo_documento { get; set; }
        public Nullable<int> IdPunto_cargo { get; set; }
        public string nom_punto_cargo { get; set; }
    }
}