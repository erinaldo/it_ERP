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
    
    public partial class vwin_Ing_Egr_Inven_det
    {
        public int Secuencia { get; set; }
        public int IdBodega { get; set; }
        public decimal IdProducto { get; set; }
        public double dm_cantidad { get; set; }
        public double dm_stock_ante { get; set; }
        public double dm_stock_actu { get; set; }
        public string dm_observacion { get; set; }
        public double dm_precio { get; set; }
        public double mv_costo { get; set; }
        public Nullable<double> dm_peso { get; set; }
        public string IdCentroCosto { get; set; }
        public string IdCentroCosto_sub_centro_costo { get; set; }
        public string IdEstadoAproba { get; set; }
        public string IdUnidadMedida { get; set; }
        public Nullable<int> IdEmpresa_oc { get; set; }
        public Nullable<int> IdSucursal_oc { get; set; }
        public Nullable<decimal> IdOrdenCompra { get; set; }
        public Nullable<int> Secuencia_oc { get; set; }
        public Nullable<int> IdPunto_cargo { get; set; }
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public decimal IdNumMovi { get; set; }
        public string nom_producto { get; set; }
        public string nom_medida { get; set; }
        public string nom_punto_cargo { get; set; }
        public Nullable<int> IdEmpresa_inv { get; set; }
        public Nullable<int> IdSucursal_inv { get; set; }
        public Nullable<int> IdBodega_inv { get; set; }
        public Nullable<int> IdMovi_inven_tipo_inv { get; set; }
        public Nullable<decimal> IdNumMovi_inv { get; set; }
        public Nullable<int> secuencia_inv { get; set; }
        public string Motivo_Aprobacion { get; set; }
        public string IdNaturaleza { get; set; }
        public double dm_cantidad_sinConversion { get; set; }
        public string IdUnidadMedida_sinConversion { get; set; }
        public string nom_medida_sinConversion { get; set; }
        public Nullable<decimal> IdProveedor { get; set; }
        public string nom_proveedor { get; set; }
        public Nullable<double> do_descuento { get; set; }
        public Nullable<double> do_subtotal { get; set; }
        public Nullable<double> do_iva { get; set; }
        public Nullable<double> do_total { get; set; }
        public string signo { get; set; }
        public Nullable<System.DateTime> cm_fecha { get; set; }
        public string nom_sucursal { get; set; }
        public string nom_bodega { get; set; }
        public string nom_motivo { get; set; }
        public string nom_tipo_inv { get; set; }
        public Nullable<int> IdMovi_inven_tipo { get; set; }
        public Nullable<int> IdPunto_cargo_grupo { get; set; }
        public Nullable<int> IdMotivo_Inv { get; set; }
        public string pr_codigo { get; set; }
        public string Estado { get; set; }
        public Nullable<System.DateTime> Fecha_registro { get; set; }
        public string nom_Centro_costo { get; set; }
        public string nom_Centro_costo_sub_centro_costo { get; set; }
        public string IdCategoria { get; set; }
        public Nullable<int> IdLinea { get; set; }
        public Nullable<int> IdGrupo { get; set; }
        public Nullable<int> IdSubgrupo { get; set; }
        public string ca_Categoria { get; set; }
        public string nom_linea { get; set; }
        public string nom_grupo { get; set; }
        public string nom_subgrupo { get; set; }
        public Nullable<double> mv_costo_sinConversion { get; set; }
    }
}