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
    
    public partial class ro_participacion_utilidad
    {
        public ro_participacion_utilidad()
        {
            this.ro_participacion_utilidad_empleado = new HashSet<ro_participacion_utilidad_empleado>();
        }
    
        public int IdEmpresa { get; set; }
        public int IdPeriodo { get; set; }
        public double UtilidadDerechoIndividual { get; set; }
        public double UtilidadCargaFamiliar { get; set; }
        public double LimiteDistribucionUtilidad { get; set; }
        public System.DateTime FechaIngresa { get; set; }
        public string UsuarioIngresa { get; set; }
        public string Observacion { get; set; }
    
        public virtual ICollection<ro_participacion_utilidad_empleado> ro_participacion_utilidad_empleado { get; set; }
    }
}