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
    
    public partial class vwfa_pre_facturacion_det_cobro_x_Unidades_Consumidas
    {
        public int IdEmpresa { get; set; }
        public decimal IdPreFacturacion { get; set; }
        public int secuencia { get; set; }
        public int IdPeriodo { get; set; }
        public string IdCentroCosto { get; set; }
        public string IdCentroCosto_sub_centro_costo { get; set; }
        public int IdPunto_cargo_PC { get; set; }
        public int IdActivoFijo { get; set; }
        public double Cantidad { get; set; }
        public double Costo_Uni { get; set; }
        public double Subtotal { get; set; }
        public bool Aplica_Iva { get; set; }
        public double Por_Iva { get; set; }
        public double Valor_Iva { get; set; }
        public double Total { get; set; }
        public string Estado { get; set; }
        public Nullable<decimal> IdTarifario { get; set; }
        public bool Facturar { get; set; }
        public string Af_Nombre { get; set; }
        public Nullable<int> IdEmpresa_cli { get; set; }
        public Nullable<decimal> IdCliente_cli { get; set; }
        public string nom_punto_cargo { get; set; }
        public string nom_Cliente { get; set; }
        public string nom_Centro_costo { get; set; }
        public string nom_Centro_costo_sub_centro_costo { get; set; }
        public double Porc_ganancia { get; set; }
    }
}