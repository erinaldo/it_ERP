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
    
    public partial class prod_Costeo_in_movi_inve_data_SALDOINICIAL
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public int IdMovi_inven_tipo { get; set; }
        public decimal IdNumMovi { get; set; }
        public string CodMoviInven { get; set; }
        public string cm_tipo { get; set; }
        public string cm_observacion { get; set; }
        public System.DateTime cm_fecha { get; set; }
        public int Secuencia { get; set; }
        public decimal IdProducto { get; set; }
        public double dm_cantidad { get; set; }
        public double dm_stock_ante { get; set; }
        public double dm_stock_actu { get; set; }
        public double mv_costo { get; set; }
        public string pr_codigo { get; set; }
        public string pr_descripcion { get; set; }
        public double pr_costo_promedio { get; set; }
        public Nullable<int> IdAnio { get; set; }
        public Nullable<int> IdMes { get; set; }
        public Nullable<double> dm_peso { get; set; }
    }
}
