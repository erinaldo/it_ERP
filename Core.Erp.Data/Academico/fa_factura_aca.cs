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
    
    public partial class fa_factura_aca
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public decimal IdCbteVta { get; set; }
        public int IdInstitucion { get; set; }
        public decimal IdEstudiante { get; set; }
        public decimal IdFamiliar { get; set; }
        public string IdParentesco_cat { get; set; }
        public int IdAnioLectivo { get; set; }
        public int IdPeriodo { get; set; }
        public Nullable<int> IdRubro { get; set; }
    
        public virtual Aca_estudiante Aca_estudiante { get; set; }
        public virtual Aca_Familiar_x_Estudiante Aca_Familiar_x_Estudiante { get; set; }
        public virtual Aca_Rubro Aca_Rubro { get; set; }
    }
}
