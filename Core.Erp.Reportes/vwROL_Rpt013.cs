//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Reportes
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwROL_Rpt013
    {
        public string pe_apellido { get; set; }
        public string pe_nombre { get; set; }
        public string pe_cedulaRuc { get; set; }
        public int IdEmpresa { get; set; }
        public decimal IdEmpleado { get; set; }
        public int IdSolicitudVaca { get; set; }
        public string pe_apellido_remplazo { get; set; }
        public string pe_nombre_remplazo { get; set; }
        public System.DateTime Anio_Desde { get; set; }
        public System.DateTime Anio_Hasta { get; set; }
        public int Dias_pendiente { get; set; }
        public int Dias_a_disfrutar { get; set; }
        public string Dias_q_Corresponde { get; set; }
        public string AnioServicio { get; set; }
        public System.DateTime Fecha { get; set; }
        public System.DateTime Fecha_Desde { get; set; }
        public System.DateTime Fecha_Hasta { get; set; }
        public System.DateTime Fecha_Retorno { get; set; }
        public string Observacion { get; set; }
        public Nullable<bool> Gozadas_Pgadas { get; set; }
        public System.DateTime FechaPago { get; set; }
        public Nullable<double> Iess { get; set; }
        public int Anio { get; set; }
        public int Mes { get; set; }
        public double Total_Remuneracion { get; set; }
        public double Total_Vacaciones { get; set; }
        public double Valor_Cancelar { get; set; }
        public string de_descripcion { get; set; }
        public Nullable<System.DateTime> em_fecha_ingreso { get; set; }
    }
}
