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
    
    public partial class vwin_movi_inve_detalle_x_Contabilizar_x_ctacbles
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public int IdMovi_inven_tipo { get; set; }
        public decimal IdNumMovi { get; set; }
        public int Secuencia { get; set; }
        public string mv_tipo_movi { get; set; }
        public decimal IdProducto { get; set; }
        public string cod_producto { get; set; }
        public string nom_producto { get; set; }
        public double dm_cantidad { get; set; }
        public double dm_stock_ante { get; set; }
        public double dm_stock_actu { get; set; }
        public string dm_observacion { get; set; }
        public double mv_costo { get; set; }
        public Nullable<double> dm_peso { get; set; }
        public System.DateTime cm_fecha { get; set; }
        public Nullable<int> IdTipoCbte { get; set; }
        public string nom_tipo_mov_inv { get; set; }
        public string nom_TipoCbte { get; set; }
        public string nom_bodega { get; set; }
        public string nom_sucursal { get; set; }
        public Nullable<int> IdPunto_cargo { get; set; }
        public Nullable<int> IdPunto_cargo_grupo { get; set; }
        public Nullable<int> IdMotivo_Inv_det { get; set; }
        public string IdCentro_Costo_x_MoviInv { get; set; }
        public string IdSubCentro_Costo_x_MoviInv { get; set; }
        public string IdCategoria { get; set; }
        public int IdLinea { get; set; }
        public int IdGrupo { get; set; }
        public int IdSubGrupo { get; set; }
        public string IdCtaCtble_Inve_x_Bod { get; set; }
        public string IdCtaCtble_Costo_x_Bod { get; set; }
        public string IdCtaCble_Inven_x_Motivo_det { get; set; }
        public string IdCtaCble_Costo_x_Motivo_det { get; set; }
        public string IdCtaCble_Inven_x_Prod { get; set; }
        public string IdCtaCble_Costo_x_Prod { get; set; }
        public string IdCtaCtble_Inve_x_SubGrupo { get; set; }
        public string IdCtaCtble_Costo_x_SubGrupo { get; set; }
        public Nullable<int> IdMotivo_Inv { get; set; }
        public string IdCtaCble_Inven_x_Motivo { get; set; }
        public string IdCtaCble_Costo_x_Motivo { get; set; }
        public string es_Inven_o_Consumo { get; set; }
        public string es_Inven_o_Consumo_det { get; set; }
        public Nullable<System.DateTime> Fecha_Transac { get; set; }
    }
}