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
    
    public partial class ro_empleado_novedad_det
    {
        public ro_empleado_novedad_det()
        {
            this.ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad = new HashSet<ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad>();
        }
    
        public int IdEmpresa { get; set; }
        public decimal IdNovedad { get; set; }
        public decimal IdEmpleado { get; set; }
        public int Secuencia { get; set; }
        public Nullable<int> IdNomina_tipo { get; set; }
        public Nullable<int> IdNomina_Tipo_Liq { get; set; }
        public string IdRol { get; set; }
        public string IdRubro { get; set; }
        public System.DateTime FechaPago { get; set; }
        public double Valor { get; set; }
        public string EstadoCobro { get; set; }
        public string Observacion { get; set; }
        public string Estado { get; set; }
        public string IdCalendario { get; set; }
        public Nullable<double> Num_Horas { get; set; }
        public Nullable<int> IdPeriodo { get; set; }
    
        public virtual ro_empleado_Novedad ro_empleado_Novedad { get; set; }
        public virtual ro_rubro_tipo ro_rubro_tipo { get; set; }
        public virtual ICollection<ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad> ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad { get; set; }
    }
}
