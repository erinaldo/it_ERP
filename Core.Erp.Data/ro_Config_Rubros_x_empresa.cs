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
    
    public partial class ro_Config_Rubros_x_empresa
    {
        public ro_Config_Rubros_x_empresa()
        {
            this.ro_rol_detalle = new HashSet<ro_rol_detalle>();
        }
    
        public int IdEmpresa { get; set; }
        public string IdRubro { get; set; }
        public int Orden { get; set; }
        public double Valor { get; set; }
        public string IdUsuario { get; set; }
        public System.DateTime Fecha_Transac { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
    
        public virtual ICollection<ro_rol_detalle> ro_rol_detalle { get; set; }
    }
}