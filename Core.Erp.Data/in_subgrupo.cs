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
    
    public partial class in_subgrupo
    {
        public in_subgrupo()
        {
            this.in_Producto = new HashSet<in_Producto>();
            this.in_subgrupo_x_CentroCosto_x_SubCentroCosto_x_CtaCble = new HashSet<in_subgrupo_x_CentroCosto_x_SubCentroCosto_x_CtaCble>();
        }
    
        public int IdEmpresa { get; set; }
        public string IdCategoria { get; set; }
        public int IdLinea { get; set; }
        public int IdGrupo { get; set; }
        public int IdSubgrupo { get; set; }
        public string abreviatura { get; set; }
        public string cod_subgrupo { get; set; }
        public string nom_subgrupo { get; set; }
        public string observacion { get; set; }
        public string Estado { get; set; }
        public string IdUsuario { get; set; }
        public System.DateTime Fecha_Transac { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string MotiAnula { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string IdCtaCtble_Inve { get; set; }
        public string IdCtaCtble_Costo { get; set; }
        public string IdCtaCtble_Gasto_x_cxp { get; set; }
        public string IdCtaCble_Vta { get; set; }
        public string IdCtaCble_Des0 { get; set; }
        public string IdCtaCble_Dev0 { get; set; }
    
        public virtual in_grupo in_grupo { get; set; }
        public virtual ICollection<in_Producto> in_Producto { get; set; }
        public virtual ICollection<in_subgrupo_x_CentroCosto_x_SubCentroCosto_x_CtaCble> in_subgrupo_x_CentroCosto_x_SubCentroCosto_x_CtaCble { get; set; }
    }
}