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
    
    public partial class vwAca_Contrato_x_Estudiante_x_Rubro
    {
        public int IdInstitucion { get; set; }
        public int IdAnioLectivo { get; set; }
        public decimal IdContrato { get; set; }
        public decimal IdMatricula { get; set; }
        public decimal IdEstudiante { get; set; }
        public int IdParalelo { get; set; }
        public string Descripcion_rubro { get; set; }
        public decimal IdRubro { get; set; }
        public Nullable<double> Valor { get; set; }
        public System.DateTime Fecha_matricula { get; set; }
        public string est_apertura_periodo { get; set; }
        public int IdInstitucion_Per { get; set; }
        public int IdAnioLectivo_Per { get; set; }
        public int IdPeriodo_Per { get; set; }
        public Nullable<int> IdGrupoFE { get; set; }
        public string deb_cred { get; set; }
        public bool estado_rubro { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public Nullable<System.DateTime> FechaModificacion { get; set; }
        public Nullable<System.DateTime> FechaAnulacion { get; set; }
        public string UsuarioCreacion { get; set; }
        public string UsuarioModificacion { get; set; }
        public string UsuarioAnulacion { get; set; }
        public string MotivoAnulacion { get; set; }
        public Nullable<bool> estado_rubro_contrato { get; set; }
        public int IdSede { get; set; }
    }
}
