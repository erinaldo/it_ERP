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
    
    public partial class seg_usuario
    {
        public seg_usuario()
        {
            this.seg_Menu_x_Empresa_x_Usuario = new HashSet<seg_Menu_x_Empresa_x_Usuario>();
            this.seg_Usuario_x_Empresa = new HashSet<seg_Usuario_x_Empresa>();
            this.seg_usuario_x_tb_sis_reporte = new HashSet<seg_usuario_x_tb_sis_reporte>();
        }
    
        public string IdUsuario { get; set; }
        public string Contrasena { get; set; }
        public string estado { get; set; }
        public Nullable<System.DateTime> Fecha_Transaccion { get; set; }
        public string IdUsuarioUltModi { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string MotivoAnulacion { get; set; }
        public string Nombre { get; set; }
        public Nullable<bool> ExigirDirectivaContrasenia { get; set; }
        public Nullable<bool> CambiarContraseniaSgtSesion { get; set; }
    
        public virtual ICollection<seg_Menu_x_Empresa_x_Usuario> seg_Menu_x_Empresa_x_Usuario { get; set; }
        public virtual ICollection<seg_Usuario_x_Empresa> seg_Usuario_x_Empresa { get; set; }
        public virtual ICollection<seg_usuario_x_tb_sis_reporte> seg_usuario_x_tb_sis_reporte { get; set; }
    }
}
