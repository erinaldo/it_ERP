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
    
    public partial class vwfa_pre_facturacion_det_cobro_x_Poliza
    {
        public int IdEmpresa { get; set; }
        public decimal IdPreFacturacion { get; set; }
        public int secuencia { get; set; }
        public string IdCentro_Costo { get; set; }
        public string nom_Centro_costo { get; set; }
        public string IdCentroCosto_sub_centro_costo { get; set; }
        public string nom_Centro_costo_sub_centro_costo { get; set; }
        public Nullable<int> IdPunto_cargo { get; set; }
        public string Tipo_Cobro_Poliza_X { get; set; }
        public Nullable<int> IdEmpresa_pol_det { get; set; }
        public Nullable<decimal> IdPoliza_pol_det { get; set; }
        public Nullable<int> IdActivoFijo_pol_det { get; set; }
        public string Af_Nombre { get; set; }
        public Nullable<int> secuencia_pol_det { get; set; }
        public Nullable<int> IdEmpresa_pol_cuota { get; set; }
        public Nullable<decimal> IdPoliza_pol_cuota { get; set; }
        public string cod_cuota_pol_cuota { get; set; }
        public Nullable<double> Cantidad { get; set; }
        public Nullable<double> Costo_Uni { get; set; }
        public Nullable<double> Subtotal { get; set; }
        public Nullable<bool> Aplica_Iva { get; set; }
        public Nullable<double> Por_Iva { get; set; }
        public Nullable<double> Valor_Iva { get; set; }
        public Nullable<double> Total { get; set; }
        public Nullable<decimal> IdCliente { get; set; }
        public string nom_Cliente { get; set; }
        public string IdEstadoFacturacion_cat { get; set; }
        public string nom_EstadoFacturacion_cat { get; set; }
        public bool Facturar { get; set; }
        public Nullable<double> Subtotal_iva { get; set; }
        public Nullable<double> Subtotal_0 { get; set; }
        public Nullable<decimal> IdTarifario { get; set; }
        public double Porc_ganancia { get; set; }
    }
}
