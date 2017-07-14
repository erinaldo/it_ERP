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
    
    public partial class Aca_Familiar
    {
        public Aca_Familiar()
        {
            this.Aca_matricula = new HashSet<Aca_matricula>();
            this.Aca_matricula1 = new HashSet<Aca_matricula>();
            this.Aca_Documento_Bancario_x_Rep_Economico = new HashSet<Aca_Documento_Bancario_x_Rep_Economico>();
            this.Aca_Familiar_x_Estudiante = new HashSet<Aca_Familiar_x_Estudiante>();
        }
    
        public int IdInstitucion { get; set; }
        public decimal IdFamiliar { get; set; }
        public string cod_familiar { get; set; }
        public decimal IdPersona { get; set; }
        public string IdNivelEducativo_cat { get; set; }
        public string Titulo { get; set; }
        public string OcupacionLaboral { get; set; }
        public string empresa_donde_trabaja { get; set; }
        public string empresa_direccion { get; set; }
        public string empresa_telefono { get; set; }
        public string empresa_email { get; set; }
        public string direccion_domicilio { get; set; }
        public string Calle_Principal { get; set; }
        public string Calle_Secundaria { get; set; }
        public string Sector_Urbanizacion { get; set; }
        public string IdCiudad { get; set; }
        public Nullable<bool> PoseeDiscapacidad { get; set; }
        public Nullable<bool> ViveFueraDelPais { get; set; }
        public Nullable<bool> Fallecido { get; set; }
        public string IdCatalogoIdiomaNativo { get; set; }
        public string IdCatalogoTipoSangre { get; set; }
        public string IdCatalogoReligion { get; set; }
        public Nullable<bool> FueExAlumnoGraduado { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public Nullable<System.DateTime> FechaModificacion { get; set; }
        public string UsuarioCreacion { get; set; }
        public string UsuarioModificacion { get; set; }
    
        public virtual Aca_Catalogo Aca_Catalogo { get; set; }
        public virtual Aca_Catalogo Aca_Catalogo1 { get; set; }
        public virtual Aca_Catalogo Aca_Catalogo2 { get; set; }
        public virtual Aca_Catalogo Aca_Catalogo3 { get; set; }
        public virtual ICollection<Aca_matricula> Aca_matricula { get; set; }
        public virtual ICollection<Aca_matricula> Aca_matricula1 { get; set; }
        public virtual ICollection<Aca_Documento_Bancario_x_Rep_Economico> Aca_Documento_Bancario_x_Rep_Economico { get; set; }
        public virtual ICollection<Aca_Familiar_x_Estudiante> Aca_Familiar_x_Estudiante { get; set; }
        public virtual Aca_Institucion Aca_Institucion { get; set; }
    }
}
