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
    
    public partial class in_ajusteFisico
    {
        public in_ajusteFisico()
        {
            this.in_AjusteFisico_Detalle = new HashSet<in_AjusteFisico_Detalle>();
        }
    
        public int IdEmpresa { get; set; }
        public decimal IdAjusteFisico { get; set; }
        public string CodAjusteFisico { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public Nullable<int> IdMovi_inven_tipo_Ing { get; set; }
        public Nullable<decimal> IdNumMovi_Ing { get; set; }
        public Nullable<int> IdMovi_inven_tipo_Egr { get; set; }
        public Nullable<decimal> IdNumMovi_Egr { get; set; }
        public string Observacion { get; set; }
        public System.DateTime Fecha { get; set; }
        public string Estado { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string motivo_anula { get; set; }
        public Nullable<System.DateTime> FechaAnulacion { get; set; }
        public string IdUsuarioAnulacion { get; set; }
        public string IdEstadoAprobacion { get; set; }
    
        public virtual ICollection<in_AjusteFisico_Detalle> in_AjusteFisico_Detalle { get; set; }
        public virtual in_Catalogo in_Catalogo { get; set; }
    }
}