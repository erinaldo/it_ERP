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
    
    public partial class ro_empleado_Novedad
    {
        public ro_empleado_Novedad()
        {
            this.ro_novedad_x_empleado = new HashSet<ro_novedad_x_empleado>();
            this.ro_empleado_novedad_det = new HashSet<ro_empleado_novedad_det>();
        }
    
        public int IdEmpresa { get; set; }
        public decimal IdNovedad { get; set; }
        public decimal IdEmpleado { get; set; }
        public int IdNomina_Tipo { get; set; }
        public int IdNomina_TipoLiqui { get; set; }
        public System.DateTime Fecha { get; set; }
        public double TotalValor { get; set; }
        public Nullable<System.DateTime> Fecha_PrimerPago { get; set; }
        public Nullable<int> NumCoutas { get; set; }
        public string IdUsuario { get; set; }
        public System.DateTime Fecha_Transac { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string MotiAnula { get; set; }
        public string Estado { get; set; }
        public string IdCentroCosto { get; set; }
        public string MotivoModiica { get; set; }
        public string IdCalendario { get; set; }
        public Nullable<int> IdPeriodo { get; set; }
    
        public virtual ro_empleado ro_empleado { get; set; }
        public virtual ro_Nomina_Tipoliqui ro_Nomina_Tipoliqui { get; set; }
        public virtual ICollection<ro_novedad_x_empleado> ro_novedad_x_empleado { get; set; }
        public virtual ICollection<ro_empleado_novedad_det> ro_empleado_novedad_det { get; set; }
    }
}
