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
    
    public partial class Aca_matricula
    {
        public Aca_matricula()
        {
            this.Aca_matricula_x_mg_matricula = new HashSet<Aca_matricula_x_mg_matricula>();
            this.Aca_matricula_x_documento = new HashSet<Aca_matricula_x_documento>();
            this.Aca_Contrato_x_Estudiante = new HashSet<Aca_Contrato_x_Estudiante>();
        }
    
        public int IdInstitucion { get; set; }
        public int IdSede { get; set; }
        public decimal IdMatricula { get; set; }
        public string CodMatricula { get; set; }
        public System.DateTime Fecha_matricula { get; set; }
        public decimal IdEstudiante { get; set; }
        public int IdAnioLectivo { get; set; }
        public Nullable<decimal> IdFamiliar_repre_legal { get; set; }
        public Nullable<decimal> IdFamiliar_repre_econ { get; set; }
        public string Observacion { get; set; }
        public string estado { get; set; }
        public int IdParalelo { get; set; }
        public bool Si_estoy_deacuerdo_foto { get; set; }
        public bool Cod_convivencia_doy_fe { get; set; }
        public bool No_estoy_deacuerdo_foto { get; set; }
        public Nullable<bool> tiene_seguro { get; set; }
        public System.DateTime FechaCreacion { get; set; }
        public Nullable<System.DateTime> FechaModificacion { get; set; }
        public Nullable<System.DateTime> FechaAnulacion { get; set; }
        public string UsuarioCreacion { get; set; }
        public string UsuarioModificacion { get; set; }
        public string UsuarioAnulacion { get; set; }
        public string MotivoAnulacion { get; set; }
        public Nullable<decimal> IdPersonaFacturar { get; set; }
    
        public virtual ICollection<Aca_matricula_x_mg_matricula> Aca_matricula_x_mg_matricula { get; set; }
        public virtual Aca_Anio_Lectivo Aca_Anio_Lectivo { get; set; }
        public virtual Aca_estudiante Aca_estudiante { get; set; }
        public virtual Aca_Familiar Aca_Familiar { get; set; }
        public virtual Aca_Familiar Aca_Familiar1 { get; set; }
        public virtual Aca_Paralelo Aca_Paralelo { get; set; }
        public virtual ICollection<Aca_matricula_x_documento> Aca_matricula_x_documento { get; set; }
        public virtual ICollection<Aca_Contrato_x_Estudiante> Aca_Contrato_x_Estudiante { get; set; }
        public virtual Aca_matricula Aca_matricula1 { get; set; }
        public virtual Aca_matricula Aca_matricula2 { get; set; }
    }
}