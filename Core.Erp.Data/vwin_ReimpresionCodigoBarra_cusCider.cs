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
    
    public partial class vwin_ReimpresionCodigoBarra_cusCider
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public int IdMovi_inven_tipo { get; set; }
        public decimal IdNumMovi { get; set; }
        public int mv_Secuencia { get; set; }
        public int Secuencia { get; set; }
        public decimal IdProducto { get; set; }
        public string CodigoBarra { get; set; }
        public string mv_tipo_movi { get; set; }
        public double dm_cantidad { get; set; }
        public string dm_observacion { get; set; }
        public double dm_precio { get; set; }
        public double mv_costo { get; set; }
        public Nullable<int> et_IdEmpresa { get; set; }
        public Nullable<int> et_IdProcesoProductivo { get; set; }
        public Nullable<decimal> ot_IdOrdenTaller { get; set; }
        public string ot_CodObra { get; set; }
        public Nullable<int> ot_IdSucursal { get; set; }
        public Nullable<int> ot_IdEmpresa { get; set; }
        public Nullable<int> et_IdEtapa { get; set; }
        public string pr_descripcion { get; set; }
        public string IdUnidadMedida { get; set; }
        public double pr_precio_publico { get; set; }
        public string Su_Descripcion { get; set; }
        public string bo_Descripcion { get; set; }
        public double pr_peso { get; set; }
    }
}
