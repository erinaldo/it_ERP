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
    
    public partial class tb_Menu_x_Empresa
    {
        public tb_Menu_x_Empresa()
        {
            this.tb_Menu_x_Empresa_x_Usuario = new HashSet<tb_Menu_x_Empresa_x_Usuario>();
        }
    
        public int IdEmpresa { get; set; }
        public int IdMenu { get; set; }
        public bool Habilitado { get; set; }
        public string NombreAsambly_x_Emp { get; set; }
        public string NomForm_x_Emp { get; set; }
    
        public virtual tb_empresa tb_empresa { get; set; }
        public virtual tb_Menu tb_Menu { get; set; }
        public virtual ICollection<tb_Menu_x_Empresa_x_Usuario> tb_Menu_x_Empresa_x_Usuario { get; set; }
    }
}
