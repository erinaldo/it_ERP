//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Academico
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwAca_Contrato_x_Estudiante_det_Beca
    {
        public int IdInstitucion { get; set; }
        public decimal IdEstudiante { get; set; }
        public decimal IdContrato { get; set; }
        public decimal IdRubro { get; set; }
        public int IdInstitucion_Per { get; set; }
        public int IdAnioLectivo_Per { get; set; }
        public int IdPeriodo_Per { get; set; }
        public string Descripcion_rubro { get; set; }
        public double Valor { get; set; }
        public string Descripcion { get; set; }
        public System.DateTime pe_FechaIni { get; set; }
        public System.DateTime pe_FechaFin { get; set; }
        public Nullable<double> valor_beca { get; set; }
        public Nullable<double> Porcentaje_beca { get; set; }
        public int TieneBeca { get; set; }
        public string nom_beca { get; set; }
        public Nullable<int> IdBeca { get; set; }
        public Nullable<int> IdEmpresa { get; set; }
        public Nullable<decimal> IdDescuento { get; set; }
    }
}
