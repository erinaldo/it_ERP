//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Facturacion_Grafinpren
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwfa_Guia_Remision
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public decimal IdGuiaRemision { get; set; }
        public string bo_Descripcion { get; set; }
        public string Su_Descripcion { get; set; }
        public string pe_nombreCompleto { get; set; }
        public string pe_nombre { get; set; }
        public decimal IdCliente { get; set; }
        public int IdVendedor { get; set; }
        public decimal IdTransportista { get; set; }
        public System.DateTime gi_fecha { get; set; }
        public Nullable<decimal> gi_plazo { get; set; }
        public Nullable<System.DateTime> gi_fech_venc { get; set; }
        public string gi_Observacion { get; set; }
        public double gi_TotalKilos { get; set; }
        public double gi_TotalQuintales { get; set; }
        public int Secuencia { get; set; }
        public decimal IdProducto { get; set; }
        public double gi_cantidad { get; set; }
        public double gi_Precio { get; set; }
        public double gi_PorDescUnitario { get; set; }
        public double gi_DescUnitario { get; set; }
        public double gi_PrecioFinal { get; set; }
        public double gi_Subtotal { get; set; }
        public double gi_iva { get; set; }
        public double gi_total { get; set; }
        public double gi_costo { get; set; }
        public string gi_tieneIVA { get; set; }
        public string gi_detallexItems { get; set; }
        public string Ve_Vendedor { get; set; }
        public string pe_apellido { get; set; }
        public decimal Expr1 { get; set; }
        public string Estado { get; set; }
        public string Serie1 { get; set; }
        public string Serie2 { get; set; }
        public string NumGuia_Preimpresa { get; set; }
        public string CodGuiaRemision { get; set; }
        public string Impreso { get; set; }
        public int IdPeriodo { get; set; }
        public double gi_flete { get; set; }
        public double gi_interes { get; set; }
        public double gi_seguro { get; set; }
        public double gi_OtroValor1 { get; set; }
        public double gi_OtroValor2 { get; set; }
        public System.DateTime gi_FechaIniTraslado { get; set; }
        public System.DateTime gi_FechaFinTraslado { get; set; }
        public Nullable<decimal> Num_OP { get; set; }
        public Nullable<decimal> Num_Cotizacion { get; set; }
        public Nullable<System.DateTime> fecha_Cotizacion { get; set; }
    }
}
