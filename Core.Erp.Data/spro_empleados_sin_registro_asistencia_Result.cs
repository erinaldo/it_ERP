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
    
    public partial class spro_empleados_sin_registro_asistencia_Result
    {
        public int IdEmpresa { get; set; }
        public decimal IdEmpleado { get; set; }
        public int IdDepartamento { get; set; }
        public int IdCargo { get; set; }
        public string pe_apellido { get; set; }
        public string pe_nombre { get; set; }
        public string pe_cedulaRuc { get; set; }
        public string de_descripcion { get; set; }
        public string ca_descripcion { get; set; }
        public string em_status { get; set; }
        public string em_estado { get; set; }
        public string Tipo_asistencia_Cat { get; set; }
        public string tu_descripcion { get; set; }
        public Nullable<bool> es_jornada_desfasada { get; set; }
        public decimal IdTurno { get; set; }
        public Nullable<System.DateTime> em_fechaSalida { get; set; }
        public Nullable<int> IdDivision { get; set; }
    }
}
