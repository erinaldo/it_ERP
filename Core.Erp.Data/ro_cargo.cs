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
    
    public partial class ro_cargo
    {
        public ro_cargo()
        {
            this.ro_empleado = new HashSet<ro_empleado>();
            this.ro_Acta_Finiquito = new HashSet<ro_Acta_Finiquito>();
        }
    
        public int IdEmpresa { get; set; }
        public int IdCargo { get; set; }
        public string ca_descripcion { get; set; }
        public string IdUsuario { get; set; }
        public Nullable<System.DateTime> Fecha_Transac { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string Estado { get; set; }
        public string MotivoAnulacion { get; set; }
    
        public virtual ICollection<ro_empleado> ro_empleado { get; set; }
        public virtual ICollection<ro_Acta_Finiquito> ro_Acta_Finiquito { get; set; }
    }
}
