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
    
    public partial class fa_guia_remision_det_x_fa_orden_Desp_det
    {
        public int gi_IdEmpresa { get; set; }
        public int gi_IdSucursal { get; set; }
        public int gi_IdBodega { get; set; }
        public decimal gi_IdGuiaRemision { get; set; }
        public int gi_Secuencia { get; set; }
        public decimal gi_IdProducto { get; set; }
        public double gi_cantidad { get; set; }
        public int od_IdEmpresa { get; set; }
        public int od_IdSucursal { get; set; }
        public int od_IdBodega { get; set; }
        public decimal od_IdOrdenDespacho { get; set; }
        public int od_Secuencia { get; set; }
        public decimal od_IdProducto { get; set; }
    
        public virtual fa_guia_remision_det fa_guia_remision_det { get; set; }
        public virtual fa_orden_Desp_det fa_orden_Desp_det { get; set; }
    }
}
