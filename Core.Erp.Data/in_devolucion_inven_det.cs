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
    
    public partial class in_devolucion_inven_det
    {
        public int IdEmpresa { get; set; }
        public decimal IdDev_Inven { get; set; }
        public int secuencia { get; set; }
        public int IdEmpresa_movi_inv { get; set; }
        public int IdSucursal_movi_inv { get; set; }
        public int IdBodega_movi_inv { get; set; }
        public int IdMovi_inven_tipo_movi_inv { get; set; }
        public decimal IdNumMovi_movi_inv { get; set; }
        public int Secuencia_movi_inv { get; set; }
        public double cantidad_devuelta { get; set; }
        public double cantidad_a_devolver { get; set; }
        public double cantidad_egresada { get; set; }
    
        public virtual in_devolucion_inven in_devolucion_inven { get; set; }
        public virtual in_movi_inve_detalle in_movi_inve_detalle { get; set; }
    }
}
