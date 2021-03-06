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
    
    public partial class Aca_Sede
    {
        public Aca_Sede()
        {
            this.Aca_Jornada = new HashSet<Aca_Jornada>();
            this.Aca_Rubro = new HashSet<Aca_Rubro>();
        }
    
        public int IdSede { get; set; }
        public int IdInstitucion { get; set; }
        public Nullable<int> IdEmpresa { get; set; }
        public Nullable<int> IdSucursal { get; set; }
        public string CodSede { get; set; }
        public string CodAlterno { get; set; }
        public string Descripcion_sede { get; set; }
        public string estado { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public Nullable<System.DateTime> FechaAnulacion { get; set; }
        public Nullable<System.DateTime> FechaModificacion { get; set; }
        public string UsuarioCreacion { get; set; }
        public string UsuarioModificacion { get; set; }
        public string UsuarioAnulacion { get; set; }
        public string MotivoAnulacion { get; set; }
    
        public virtual Aca_Institucion Aca_Institucion { get; set; }
        public virtual ICollection<Aca_Jornada> Aca_Jornada { get; set; }
        public virtual ICollection<Aca_Rubro> Aca_Rubro { get; set; }
    }
}
