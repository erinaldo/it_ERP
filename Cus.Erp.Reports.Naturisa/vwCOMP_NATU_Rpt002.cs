//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cus.Erp.Reports.Naturisa
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwCOMP_NATU_Rpt002
    {
        public int IdEmpresa { get; set; }
        public string em_nombre { get; set; }
        public int IdSucursal { get; set; }
        public string Su_Descripcion { get; set; }
        public decimal IdSolicitudCompra { get; set; }
        public string NumDocumento { get; set; }
        public System.DateTime fecha { get; set; }
        public int Secuencia { get; set; }
        public Nullable<decimal> IdProducto { get; set; }
        public double do_Cantidad { get; set; }
        public string NomProducto { get; set; }
        public Nullable<int> IdSucursalOC { get; set; }
        public Nullable<decimal> IdOrdenCompra { get; set; }
        public Nullable<int> Secuencia_OC { get; set; }
        public Nullable<decimal> IdProducto_OC { get; set; }
        public Nullable<double> do_precioCompra { get; set; }
        public Nullable<double> do_subtotal { get; set; }
        public Nullable<decimal> IdProveedor { get; set; }
        public string Nom_proveedor { get; set; }
        public double do_Cantidad_OC { get; set; }
        public double dm_cantidad_Inv { get; set; }
        public double Saldo_x_Ing_a_Inv { get; set; }
        public Nullable<int> IdPunto_cargo { get; set; }
        public string nom_punto_cargo { get; set; }
        public string pr_codigo { get; set; }
    }
}