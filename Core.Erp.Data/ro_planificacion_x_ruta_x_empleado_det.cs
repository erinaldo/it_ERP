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
    
    public partial class ro_planificacion_x_ruta_x_empleado_det
    {
        public int IdEmpresa { get; set; }
        public int IdNomina_Tipo { get; set; }
        public int IdNomina_Tipo_Liq { get; set; }
        public int IdPeriodo { get; set; }
        public decimal IdEmpleado { get; set; }
        public Nullable<int> IdPlaca { get; set; }
        public Nullable<int> IdRuta { get; set; }
        public Nullable<int> IdFuerza { get; set; }
        public Nullable<int> IdZona { get; set; }
        public Nullable<int> IdDisco { get; set; }
        public string Observacion { get; set; }
    
        public virtual ro_disco ro_disco { get; set; }
        public virtual ro_fuerza ro_fuerza { get; set; }
        public virtual ro_placa ro_placa { get; set; }
        public virtual ro_planificacion_x_ruta_x_empleado ro_planificacion_x_ruta_x_empleado { get; set; }
        public virtual ro_ruta ro_ruta { get; set; }
        public virtual ro_zona ro_zona { get; set; }
    }
}