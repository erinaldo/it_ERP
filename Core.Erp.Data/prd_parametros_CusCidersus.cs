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
    
    public partial class prd_parametros_CusCidersus
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal_Princ { get; set; }
        public int IdBodega_Princ { get; set; }
        public int IdSucursal_Produccion { get; set; }
        public int IdBodega_Produccion { get; set; }
        public Nullable<int> IdMovi_inven_tipo_ing_suc_princ { get; set; }
        public Nullable<int> IdMovi_inven_tipo_egr_suc_princ { get; set; }
        public Nullable<int> IdMovi_inven_tipo_egr_consumoprod { get; set; }
        public Nullable<int> IdMovi_inven_tipo_ing_consumoprod { get; set; }
        public Nullable<int> IdMovi_inven_tipo_ing_ContrlProduccion { get; set; }
        public Nullable<int> IdMovi_inven_tipo_egr_ContrlProduccion { get; set; }
        public Nullable<int> IdMovi_inven_tipo_egr_Conversion { get; set; }
        public Nullable<int> IdMovi_inven_tipo_ing_Conversion { get; set; }
        public Nullable<int> IdMovi_inven_tipo_egr_Ensamblado { get; set; }
        public Nullable<int> IdMovi_inven_tipo_ing_Ensamblado { get; set; }
        public Nullable<int> IdMovi_inven_tipo_ingxresid_Conversion { get; set; }
        public Nullable<int> IdMovi_invent_tipo_egr_Despacho { get; set; }
        public string IdEstadoAprobacion_x_default { get; set; }
        public Nullable<int> IdProductoTipo_ProdTerm { get; set; }
        public string IdCategoria_ProdTerm { get; set; }
        public Nullable<decimal> IdProveedor_ProdTerm { get; set; }
        public Nullable<int> IdMarca_ProdTerm { get; set; }
        public Nullable<int> idTipo_Produto_Elemento { get; set; }
        public Nullable<int> IdProductoTipo_MateriaPrima { get; set; }
        public Nullable<decimal> IdMoviInicio { get; set; }
    }
}
