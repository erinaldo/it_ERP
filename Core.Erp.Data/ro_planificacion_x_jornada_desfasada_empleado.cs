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
    
    public partial class ro_planificacion_x_jornada_desfasada_empleado
    {
        public int IdEmpresa { get; set; }
        public int IdNomina_Tipo { get; set; }
        public decimal IdEmpleado { get; set; }
        public int IdPeriodo { get; set; }
        public int IdMes { get; set; }
        public int IdAnio { get; set; }
        public decimal IdTurno { get; set; }
        public string Observacion { get; set; }
        public string Estado { get; set; }
    
        public virtual ro_planificacion_x_jornada_desfasada ro_planificacion_x_jornada_desfasada { get; set; }
    }
}
