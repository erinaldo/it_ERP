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
    
    public partial class cp_Aprobacion_Orden_pago_det
    {
        public int IdEmpresa { get; set; }
        public decimal IdAprobacion { get; set; }
        public int secuencia { get; set; }
        public int IdEmpresa_OP { get; set; }
        public decimal IdOrdenPago_OP { get; set; }
        public int Secuencia_OP { get; set; }
    
        public virtual cp_Aprobacion_Orden_pago cp_Aprobacion_Orden_pago { get; set; }
        public virtual cp_orden_pago_det cp_orden_pago_det { get; set; }
    }
}
