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
    
    public partial class ro_parametro_x_pago_variable
    {
        public ro_parametro_x_pago_variable()
        {
            this.ro_empleado_x_parametro_x_pago_variable_Det = new HashSet<ro_empleado_x_parametro_x_pago_variable_Det>();
            this.ro_parametro_x_pago_variable_Det = new HashSet<ro_parametro_x_pago_variable_Det>();
        }
    
        public int IdEmpresa { get; set; }
        public int IdNomina_Tipo { get; set; }
        public int Id_Tipo_Pago_Variable { get; set; }
        public string Nombre { get; set; }
        public bool Estado { get; set; }
        public string IdUsuario { get; set; }
        public Nullable<System.DateTime> Fecha_Transaccion { get; set; }
        public string IdUsuarioUltModi { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string MotivoAnulacion { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
    
        public virtual ICollection<ro_empleado_x_parametro_x_pago_variable_Det> ro_empleado_x_parametro_x_pago_variable_Det { get; set; }
        public virtual ICollection<ro_parametro_x_pago_variable_Det> ro_parametro_x_pago_variable_Det { get; set; }
    }
}