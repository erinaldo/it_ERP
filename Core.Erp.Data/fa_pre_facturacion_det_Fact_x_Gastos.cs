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
    
    public partial class fa_pre_facturacion_det_Fact_x_Gastos
    {
        public int IdEmpresa { get; set; }
        public decimal IdPreFacturacion { get; set; }
        public string secuencia { get; set; }
        public string IdCentro_Costo { get; set; }
        public string IdCentroCosto_sub_centro_costo { get; set; }
        public Nullable<int> IdPunto_cargo { get; set; }
        public int IdEmpresa_og { get; set; }
        public int IdTipoCbte_Ogiro { get; set; }
        public decimal IdCbteCble_Ogiro { get; set; }
        public Nullable<double> Cantidad { get; set; }
        public Nullable<double> Costo_Uni { get; set; }
        public Nullable<double> Subtotal { get; set; }
        public Nullable<bool> Aplica_Iva { get; set; }
        public Nullable<double> Por_Iva { get; set; }
        public Nullable<double> Valor_Iva { get; set; }
        public Nullable<double> Total { get; set; }
        public bool Facturar { get; set; }
        public Nullable<double> SubTotal_Iva { get; set; }
        public Nullable<double> SubTotal_0 { get; set; }
        public Nullable<decimal> IdTarifario { get; set; }
        public double Porc_ganancia { get; set; }
    }
}
