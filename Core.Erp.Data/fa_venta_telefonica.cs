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
    
    public partial class fa_venta_telefonica
    {
        public fa_venta_telefonica()
        {
            this.fa_venta_telefonica_det = new HashSet<fa_venta_telefonica_det>();
        }
    
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public decimal IdVenta_tel { get; set; }
        public decimal IdCliente { get; set; }
        public System.DateTime Fecha { get; set; }
        public string Observacion { get; set; }
        public string IdMotivo { get; set; }
        public string Contactar_futuro { get; set; }
        public string IdUsuario { get; set; }
        public string Estado { get; set; }
        public System.DateTime Fecha_Transac { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
    
        public virtual ICollection<fa_venta_telefonica_det> fa_venta_telefonica_det { get; set; }
        public virtual fa_cliente fa_cliente { get; set; }
    }
}
