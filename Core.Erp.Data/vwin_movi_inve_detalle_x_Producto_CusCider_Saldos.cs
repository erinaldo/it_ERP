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
    
    public partial class vwin_movi_inve_detalle_x_Producto_CusCider_Saldos
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public decimal IdProducto { get; set; }
        public string CodigoBarra { get; set; }
        public Nullable<double> dm_cantidad { get; set; }
        public Nullable<System.DateTime> Fecha_Transac { get; set; }
        public System.DateTime cm_fecha { get; set; }
        public string pr_codigo { get; set; }
        public string pr_descripcion { get; set; }
        public string observacion { get; set; }
        public double dm_precio { get; set; }
        public double mv_costo { get; set; }
        public double longitud { get; set; }
        public double espesor { get; set; }
        public double ancho { get; set; }
        public double alto { get; set; }
        public double ceja { get; set; }
        public double diametro { get; set; }
        public string descripcion_corta { get; set; }
        public int densidad { get; set; }
        public int Secuencia { get; set; }
        public int mv_Secuencia { get; set; }
        public string dm_observacion { get; set; }
        public decimal IdNumMovi { get; set; }
        public string ot_CodObra { get; set; }
        public Nullable<decimal> ot_IdOrdenTaller { get; set; }
        public double pr_peso { get; set; }
        public Nullable<double> PesoEspecifico { get; set; }
        public string CodObra_preasignada { get; set; }
        public Nullable<decimal> IdOrdenTaller_preasignada { get; set; }
        public Nullable<decimal> ocd_IdOrdenCompra { get; set; }
        public string NumDocumentoRelacionadoProveedor { get; set; }
        public string NumFacturaProveedor { get; set; }
    }
}