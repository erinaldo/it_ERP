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
    
    public partial class spCXP_Rpt035_Result
    {
        public long IdRow { get; set; }
        public int IdEmpresa { get; set; }
        public decimal IdCbteCble_Ogiro { get; set; }
        public int IdTipoCbte_Ogiro { get; set; }
        public string IdOrden_giro_Tipo { get; set; }
        public string Documento { get; set; }
        public string nom_tipo_doc { get; set; }
        public string cod_tipo_doc { get; set; }
        public decimal IdProveedor { get; set; }
        public string nom_proveedor { get; set; }
        public double Valor_a_pagar { get; set; }
        public double MontoAplicado { get; set; }
        public double Saldo { get; set; }
        public string Observacion { get; set; }
        public string Ruc_Proveedor { get; set; }
        public string representante_legal { get; set; }
        public string Tipo_cbte { get; set; }
        public Nullable<int> Plazo_fact { get; set; }
        public System.DateTime co_fechaOg { get; set; }
        public System.DateTime co_FechaFactura_vct { get; set; }
        public Nullable<int> Dias_Vcto { get; set; }
        public Nullable<System.DateTime> Fecha_corte { get; set; }
        public double x_Vencer { get; set; }
        public double Vencido_1_30 { get; set; }
        public double Vencido_31_60 { get; set; }
        public double Vencido_61_180 { get; set; }
        public double Vencido_Mayor_181 { get; set; }
    }
}
